from django.shortcuts import render, HttpResponseRedirect, get_object_or_404
from django.http import JsonResponse
from django.views.generic.base import View
from users.models import UserProfile
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger
from users.forms import LoginForm, UserForm
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.hashers import make_password
from rbac.models import Role
from .models import Structure, Post


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
        role_list = Role.objects.all()
        structure_list = Structure.objects.all()
        post_list = Post.objects.all()
        role_list = Role.objects.all()
        return render(request, 'users/user_add.html',
                      {'role_list': role_list, 'structure_list': structure_list, 'post_list': post_list,
                       'role_list': role_list})

    def post(self, request):
        post = request.POST
        roles = request.POST.getlist('roles', [])
        username = post.get('user_name', '')
        password = post.get('password', '')
        email = post.get('email', '')
        real_name = post.get('real_name', '')
        # password2 = post.get('password2', '')
        posts = post.get('posts', '')
        mobile = post.get('mobile', '')

        user = UserProfile()
        user.username = username
        user.user_name = real_name
        user.password = make_password(password)
        user.email = email
        user.mobile = mobile
        user.save()
        # 增加职位
        for post_id in posts:
            try:
                post_id = int(post_id)
            except:
                continue
            post = get_object_or_404(Post, pk=int(post_id))
            user.post.add(post)

        for role_id in roles:
            try:
                role_id = int(role_id)
            except:
                continue
            role = get_object_or_404(Role, pk=int(role_id))
            user.roles.add(role)

        return HttpResponseRedirect('/system/basic/user/')


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
