# -*- coding:utf-8 -*-

import xadmin
from xadmin.plugins.auth import UserAdmin
from xadmin import views


class GlobalSettings(object):
    site_title = "图书管理系统"
    site_footer = "图书管理系统"
    menu_style = "accordion"


class UserProfileAdmin(UserAdmin):
    pass


xadmin.site.register(views.CommAdminView, GlobalSettings)


