# _*_ coding:utf-8 _*_
from django.shortcuts import render
from django.views.generic.base import View
from django.core.urlresolvers import reverse
from django.contrib.auth import logout, login, authenticate
from django.http import HttpResponseRedirect
from django.contrib.auth.hashers import make_password
from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator

from .forms import LoginForm, RegisterForm, ChangePasswordForm
from .models import UserProfile


class IndexView(View):
    def get(self, request):
        return render(request, "index.html", {})


class LogoutView(View):
    """
    用户注销
    """
    def get(self, request):
        logout(request)
        return HttpResponseRedirect(reverse("index"))


class LoginView(View):
    """
    登录认证
    """
    def get(self, request):
        login_form = LoginForm()
        return render(request, "login.html", {"login_form": login_form})

    def post(self, request):
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            user_name = request.POST.get("username", "")
            pass_word = request.POST.get("password", "")
            user = authenticate(username=user_name, password=pass_word)
            if user:
                login(request, user)
                return HttpResponseRedirect(reverse("index"))
            else:
                return render(request, "login.html", {
                    "login_form": login_form,
                    "msg": u"用户名或密码错误"
                })
        else:
            return render(request, "login.html", {"login_form": login_form})


class RegisterView(View):
    """
    用户注册
    """
    def get(self, request):
        register_form = RegisterForm()
        return render(request, "register.html", {"register_form": register_form})

    def post(self, request):
        register_form = RegisterForm(request.POST)
        if register_form.is_valid():
            user_name = request.POST.get("username", "")
            nick_name = request.POST.get("nickname", "")
            email = request.POST.get("email", "")
            password = request.POST.get("password", "")
            repeat_password = request.POST.get("repeat_password", "")

            if password != repeat_password:
                return render(request, "register.html", {"msg": u"两次密码不一致!"})

            if UserProfile.objects.filter(username=user_name):
                return render(request, "register.html", {"username": user_name, "msg": u"用户已存在!"})

            if UserProfile.objects.filter(email=email):
                return render(request, "register.html", {"email": email, "msg": u"email已存在!"})

            user_profile = UserProfile()
            user_profile.username = user_name
            user_profile.nick_name = nick_name
            user_profile.email = email
            user_profile.password = make_password(password)
            user_profile.save()
            return render(request, "register_success.html")

        else:
            return render(request, "register.html", {"register_form": register_form})


class ChangePasswordView(View):
    """
    重置密码
    """
    def get(self, request):
        return render(request, "change_password.html")

    def post(self, request):
        change_password_form = ChangePasswordForm(request.POST)
        if change_password_form.is_valid():
            old_password = request.POST.get("old_password", "")
            new_password = request.POST.get("new_password", "")
            repeat_password = request.POST.get("repeat_password", "")
            if new_password != repeat_password:
                return render(request, "change_password.html", {"msg": u"两次密码不一致"})

            user_profile = UserProfile.objects.get(username=request.user.username)
            user_profile.password = make_password(new_password)
            user_profile.save()
            return render(request, "change_success.html")
        else:
            return render(request, "change_password.html", {"change_password_form": change_password_form,})


class LoginRequired(object):
    """
    认证装饰器
    """
    @method_decorator(login_required(login_url="/login/"))
    def dispatch(self, request, *args, **kwargs):
        return super(LoginRequired, self).dispatch(request, *args, **kwargs)
