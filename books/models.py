# _*_ coding:utf-8 _*_
from __future__ import unicode_literals
from datetime import datetime

from django.db import models

from users.models import UserProfile

class BookDict(models.Model):
    name = models.CharField(max_length=20, verbose_name=u"类别")

    class Meta:
        verbose_name = u"类别"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name


class Book(models.Model):
    name = models.CharField(max_length=128, verbose_name=u"书名")
    price = models.FloatField(default=0, verbose_name=u"价格")
    author = models.CharField(max_length=128, verbose_name=u"作者")
    publish_date = models.DateField(default=datetime.now, verbose_name=u"上架时间")
    category = models.ForeignKey(BookDict, verbose_name=u"图书类别")
    image = models.ImageField(upload_to="books/%Y/%m", verbose_name=u"封面图", max_length=100, null=True, blank=True)
    desc = models.TextField(verbose_name=u"详细介绍", default=u"暂无介绍", null=True, blank=True)

    class Meta:
        verbose_name = u"图书"
        verbose_name_plural = verbose_name
        ordering = ['name']

    def __unicode__(self):
        return self.name


class BorrowList(models.Model):
    book_name = models.CharField(max_length=128, verbose_name=u"图书名")
    borrow_user = models.CharField(max_length=128, verbose_name=u"借阅人")
    return_book = models.CharField(max_length=10, default=u"wgh", choices=(("wgh", u"未归还"), ("ygh", u"已归还")), verbose_name=u"是否归还")
    borrow_date = models.DateField(default=datetime.now, verbose_name=u"借阅时间")
    return_date = models.DateField(null=True, default=None, blank=True, verbose_name=u"归还时间")


    class Meta:
        verbose_name = u"借阅清单"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.book_name


# class ReturnList(models.Model):
#     name = models.ForeignKey(BorrowList, verbose_name=u"图书名")
#     user = models.ForeignKey(BorrowList, verbose_name=u"借阅人")
#     return_book = models.CharField(max_length=10, default=u"未归还", choices=(("wgh", u"未归还"), ("ygh", u"已归还")),
#                                    verbose_name=u"是否归还")
#     return_date = models.DateField(default=datetime.now, verbose_name=u"借阅时间")
