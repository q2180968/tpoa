from django.shortcuts import render, HttpResponseRedirect
from django.http import JsonResponse
from django.views.generic.base import View
from users.models import UserProfile
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger
from users.forms import LoginForm
from django.contrib.auth import login, logout, authenticate


# 登录验证
class LoginView(View):
    def get(self, request):
        if request.user.is_authenticated():
            return HttpResponseRedirect('/personal/')
        else:
            return render(request, 'users/login.html')

    def post(self, request):
        u_form = LoginForm(request.POST)
        if u_form.is_valid():
            username = u_form['username'].value()
            password = u_form['password'].value()
            user = authenticate(username=username, password=password)
            if user:
                if user.is_active:
                    login(request, user)
                    return HttpResponseRedirect('/')
                else:
                    return render(request, 'users/login.html', {'msg': '用户未激活'})
            else:
                return render(request, 'users/login.html', {'msg': '用户名密码错误'})
        else:
            return render(request, 'users/login.html', {'u_form': u_form})


class LogoutView(View):
    def get(self, request):
        if request.user.is_authenticated():
            logout(request)
            return HttpResponseRedirect('/login/')
        else:
            return HttpResponseRedirect('/login/')


# 用戶视图
class UserView(View):
    def get(self, request):
        user_list = UserProfile.objects.all()
        count = user_list.count()
        # 分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(user_list, 10, request=request)
        user_list = p.page(page)
        user = user_list.object_list
        return render(request, 'users/user.html', {'user_list': user_list, 'count': count})

    def post(self, request):
        pass


class UserAdd(View):
    def get(self, request):
        return render(request, 'users/user_add.html')

    def post(self, request):
        pass


class UserDelete(View):
    def get(self, request):
        pass

    def post(self, request):
        pass


class UserEdit(View):
    def get(self, request):
        pass

    def post(self, request):
        pass
