from django.shortcuts import render, HttpResponseRedirect
from django.http import JsonResponse
from django.views.generic.base import View
from users.models import UserProfile
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger
from users.forms import LoginForm


# 登录验证
class LoginView(View):
    def get(self, request):
        if request.user.is_authenticated():
            return HttpResponseRedirect('/personal/')
        else:
            return render(request, 'users/login.html')

    def post(self, request):
        u_form = LoginForm(request.POST)
        pass
