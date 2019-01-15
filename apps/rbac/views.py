from django.shortcuts import render
from django.views.generic import View
from rbac.models import Menu, Role
from pure_pagination import PageNotAnInteger, Paginator
from rbac.forms import MenuForm
from django.http import HttpResponseRedirect
from django.db.models import Q


# Create your views here.
# menu列表
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


# 角色列表
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


# 增加角色
class RoleAddView(View):
    def get(self, request):
        return render(request, 'rbac/role_add.html')


# 增加菜单权限
class MenuAddView(View):
    def get(self, request):
        all_menu = Menu.objects.all()
        return render(request, 'rbac/menu_add.html', {'all_menu': all_menu})

    def post(self, request):
        m_form = MenuForm(request.POST)
        if m_form.is_valid():
            try:
                title = m_form['title'].value()
                parent = m_form['parent'].value()
                icon = m_form['icon'].value()
                url = m_form['url'].value()
                is_top = m_form['is_top'].value()
                code = m_form['code'].value()
                menu = Menu()
                menu.title = title
                if parent == '':
                    menu.parent = None
                else:
                    parent = int(parent)
                    p_menu = Menu.objects.get(id=parent)
                    menu.parent = p_menu
                menu.icon = icon
                if url == '':
                    menu.url = None
                else:
                    menu.url = url
                menu.is_top = is_top
                menu.code = code
                is_exist = Menu.objects.filter(Q(title=title) | Q(url=url)).count()
                if is_exist > 0:
                    all_menu = Menu.objects.all()
                    error_msg = '标题或者URL已经存在'
                    return render(request, 'rbac/menu_add.html',
                                  {'m_form': m_form, 'all_menu': all_menu, 'error_msg': error_msg})
                menu.save()
                return HttpResponseRedirect('system/rbac/menu')
            except:
                all_menu = Menu.objects.all()
                error_msg = '出现未知错误！或请联系管理员!!!'
                return render(request, 'rbac/menu_add.html',
                              {'m_form': m_form, 'all_menu': all_menu, 'error_msg': error_msg})
        else:
            all_menu = Menu.objects.all()
            return render(request, 'rbac/menu_add.html', {'m_form': m_form, 'all_menu': all_menu})


# 角色修改
class RoleEditView(View):
    def get(self, request):
        return render(request, '')


# 菜单权限修改
class MenuEditView(View):
    def get(self, request):
        m_id = request.GET.get('id')
        menu = Menu.objects.get(id=m_id)
        all_menu = Menu.objects.all()
        return render(request, 'rbac/menu_edit.html', {'all_menu': all_menu, 'menu': menu})
