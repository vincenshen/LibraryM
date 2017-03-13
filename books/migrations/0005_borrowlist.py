# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-03-12 23:12
from __future__ import unicode_literals

import datetime
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('books', '0004_book_desc'),
    ]

    operations = [
        migrations.CreateModel(
            name='BorrowList',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('borrow_date', models.DateField(default=datetime.datetime.now, verbose_name='\u501f\u9605\u65f6\u95f4')),
                ('book_name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='books.Book', verbose_name='\u56fe\u4e66\u540d')),
                ('borrow_user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='\u501f\u9605\u4eba')),
            ],
            options={
                'verbose_name': '\u501f\u9605\u6e05\u5355',
                'verbose_name_plural': '\u501f\u9605\u6e05\u5355',
            },
        ),
    ]