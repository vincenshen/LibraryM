# _*_ coding:utf-8 _*_
from django.shortcuts import render
from django.views.generic.base import View
from .models import BookDict, Book, BorrowList
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger
from django.db.models import Q

from users.views import LoginRequired


class BookListView(View):
    """
    图书列表
    """
    def get(self, request):
        current_category = request.GET.get('category')
        all_category = BookDict.objects.all()
        all_books = Book.objects.all()
        # 分类显示功能
        category_id = request.GET.get("category", "")
        if category_id:
            all_books = all_books.filter(category_id=int(category_id))

        # 分页功能
        try:
            page = request.GET.get("page", 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(all_books, 10, request=request)
        all_books = p.page(page)
        return render(request, "book_list.html", {
            "book_category": all_category,
            "all_books": all_books,
            "current_category": current_category
        })


class BookDetailView(View):
    """
    图书详情
    """
    def get(self, request, book_id):
        book_detail = Book.objects.get(id=int(book_id))
        return render(request, "book_detail.html", {"book_detail": book_detail})


class SearchBookView(View):
    """
    搜索图书
    """
    def get(self, request):
        return render(request, "search_book.html", {})

    def post(self, request):
        all_books = Book.objects.all()

        # 搜索功能
        search_keywords = request.POST.get("keywords", "")
        if search_keywords:
            all_books = all_books.filter(Q(name__icontains=search_keywords) | Q(author__icontains=search_keywords))

        # 分页功能
        try:
            page = request.GET.get("page", 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(all_books, 10, request=request)
        search_book = p.page(page)
        return render(request, "book_list.html", {
            "all_books": search_book
        })


class BorrowBookView(LoginRequired, View):
    """
    图书借阅
    """
    def post(self, request):
        book_name = request.POST.get("bookname", "")
        borrow_user = request.POST.get("borrowuser", "")
        borrow_list = BorrowList()
        borrow_list.book_name = book_name
        borrow_list.borrow_user = borrow_user
        borrow_list.save()
        return render(request, "borrow_success.html", {})


class BorrowListView(LoginRequired, View):
    """
    借阅清单
    """
    def get(self, request):
        borrow_user = request.user.username
        all_books = BorrowList.objects.filter(borrow_user=borrow_user)
        all_books = all_books.filter(return_book="wgh")
        # 分页功能
        try:
            page = request.GET.get("page", 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(all_books, 10, request=request)
        all_books = p.page(page)
        return render(request, "borrow_list.html", {"all_books": all_books})


class ReturnListView(LoginRequired, View):
    """
    归还清单
    """
    def get(self, request):
        borrow_user = request.user.username
        all_books = BorrowList.objects.filter(borrow_user=borrow_user)
        all_books = all_books.filter(return_book="ygh")
        # 分页功能
        try:
            page = request.GET.get("page", 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(all_books, 10, request=request)
        all_books = p.page(page)
        return render(request, "borrow_list.html", {"all_books": all_books})