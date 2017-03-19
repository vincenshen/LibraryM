# -*- coding:utf-8 -*-

import xadmin

from .models import BookDict, Book, BorrowList


class BookAdmin(object):
    list_display = ("name", "price", "author", "publish_date", "category")
    search_fields = ("name", "price", "author", "category")
    list_filter = ("name", "price", "author", "publish_date", "category")


class BookDictAdmin(object):
    list_display = ("name",)
    search_fields = ("name",)
    list_filter = ("name",)


class BorrowListAdmin(object):
    list_display = ("book_name", "borrow_user", "borrow_date", "return_book", "return_date")
    search_fields = ("book_name", "borrow_user", "return_book")
    list_filter = ("book_name", "borrow_user", "borrow_date", "return_book", "return_date")
    readonly_fields = ["book_name", "borrow_user", "borrow_date"]

xadmin.site.register(BookDict, BookDictAdmin)
xadmin.site.register(Book, BookAdmin)
xadmin.site.register(BorrowList, BorrowListAdmin)
