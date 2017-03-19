# _*_ coding:utf-8 _*_
"""LibraryM URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.10/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.contrib import admin
import xadmin
from django.views.static import serve
from .settings import MEDIA_ROOT
from users.views import IndexView, LoginView, RegisterView, LogoutView, ChangePasswordView
from books.views import BookDetailView, BookListView, SearchBookView, BorrowBookView, BorrowListView, ReturnListView

urlpatterns = [
    url(r'^xadmin/', xadmin.site.urls),
    url(r'^media/(?P<path>.*)/$', serve, {"document_root": MEDIA_ROOT}),

    # 验证码url
    url(r'^captcha/', include('captcha.urls')),

    # user url list
    url(r'^$', IndexView.as_view(), name='index'),
    url(r'^login/$', LoginView.as_view(), name='login'),
    url(r'^logout/$', LogoutView.as_view(), name='logout'),
    url(r'^register/$', RegisterView.as_view(), name='register'),
    url(r'^changepassword/$', ChangePasswordView.as_view(), name='changepassword'),

    # book url list
    url(r'^booklist/$', BookListView.as_view(), name='booklist'),
    url(r'^bookdetail/(?P<book_id>\d+)/$', BookDetailView.as_view(), name='bookdetail'),
    url(r'^searchbook/$', SearchBookView.as_view(), name='searchbook'),
    url(r'^borrowbook/$', BorrowBookView.as_view(), name='borrowbook'),
    url(r'^borrowlist/$', BorrowListView.as_view(), name='borrowlist'),
    url(r'^returnlist/$', ReturnListView.as_view(), name='returnlist'),
]
