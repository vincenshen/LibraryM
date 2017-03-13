# -*- coding:utf-8 -*-

from django import forms
from captcha.fields import CaptchaField


class LoginForm(forms.Form):
    username = forms.CharField(required=True, min_length=4)
    password = forms.CharField(required=True, min_length=6)
    captcha = CaptchaField(error_messages={"invalid": u"验证码错误"})


class RegisterForm(forms.Form):
    username = forms.CharField(required=True, min_length=4)
    password = forms.CharField(required=True, min_length=6)
    email = forms.EmailField(required=True)
    captcha = CaptchaField(error_messages={"invalid": u"验证码错误"})


class ChangePasswordForm(forms.Form):
    old_password = forms.CharField(required=True)
    new_password = forms.CharField(required=True, min_length=6)
