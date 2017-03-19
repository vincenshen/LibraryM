# 图书管理系统说明V1.1


### 项目介绍（2017-03-13）

	该图书管理系统项目主要是为了毕业设计而做。因前端技术渣渣，借鉴了网友yumendy的前端页面，后端逻辑全部是自己编写。


### 项目所涉及的和Django相关的功能

*captcha登录、注册验证码
*pure_pagination页面分页
*Django 模板
*Django 认证装饰器
*Django xadmin后台
*Django Form表单
*重写Django User表
*基于类实现get post方法
*url反向解析
*Django.db.models Q模糊匹配

### 系统说明

* python 2.7.x
* Django 1.10.6
* Django-simple-captcha 0.5.3
* Django-pure-pagination 0.3.0
* Pillow 4.0.0
* MySQL-python 1.2.5


### 运行说明

* 基于python2.7开发，暂不支持python3.x
* 后端需要数据库使用mysql
* 在终端中执行`python manage.py runserver`命令即可运行本地开发服务器
* 在浏览器里访问`http://127.0.0.1:8000`即可查看该网站
* 管理员后台登录地址 http://127.0.0.1:8000/xadmin


### 功能实现

* 帐号管理: 注册、登陆、修改密码、注销
* 用户分级：普通用户与管理员用户
* 管理员账号：libadmin 密码：12345678a
* 用户账号：ericli 密码：123456
* 管理员：管理图书，管理图书分类，管理用户，管理借书记录，管理归还记录
* 匿名用户可以：查看、搜索图书
* 登录用户可以：借阅图书，查看借阅列表，查看归还列表
* 实现图书分类列表功能，及标签激活加亮功能
* 搜索功能支持图书名和作者名的模糊检索。
* 图书分页功能

### 版本更新

* 2017.3.12 1.0 完成基本功能
* 2017.3.19 1.1 增加图书归还功能

### 已知bug

* 验证码无法刷新


