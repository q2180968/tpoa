from django.shortcuts import render
from django.views.generic import View
from rbac.models import Menu, Role
from pure_pagination import PageNotAnInteger, Paginator


# Create your views here.
class MenuView(View):
    def get(self, request):
        all_menu = Menu.objects.all()
        count = all_menu.count()
        # 分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(all_menu, 10, request=request)
        all_menu = p.page(page)
        return render(request, 'rbac/menu.html', {'all_menu': all_menu, 'count': count})


class RoleView(View):
    def get(self, request):
        all_role = Role.objects.all()
        count = all_role.count()
        # 分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(all_role, 10, request=request)
        all_role = p.page(page)
        return render(request, 'rbac/role.html', {'all_role': all_role, 'count': count})
