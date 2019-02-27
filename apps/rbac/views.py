from django.db.models import Q
from django.http import HttpResponseRedirect, JsonResponse
from django.shortcuts import render, get_object_or_404
from django.views.generic import View
from pure_pagination import PageNotAnInteger, Paginator

from rbac.forms import MenuForm
from rbac.models import Menu, Role


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
        all_menu = Menu.objects.all()
        return render(request, 'rbac/role_add.html', {'all_menu': all_menu})

    def post(self, request):
        title = request.POST.get('title', '')
        permissions = request.POST.getlist('permissions')
        all_menu = Menu.objects.all()
        if title == '':
            error_msg = '标题不能为空!!!'
            return render(request, 'rbac/role_add.html',
                          {'error_msg': error_msg, 'all_menu': all_menu, 'title': title, 'permissions': permissions})
        if Role.objects.filter(title=title).count() > 0:
            error_msg = '角色已存在!!!'
            return render(request, 'rbac/role_add.html',
                          {'error_msg': error_msg, 'all_menu': all_menu, 'title': title, 'permissions': permissions})
        if len(permissions) == 0:
            error_msg = '最少指定一个权限!!!'
            return render(request, 'rbac/role_add.html',
                          {'error_msg': error_msg, 'all_menu': all_menu, 'title': title, 'permissions': permissions})
        role = Role()
        role.title = title
        role.save()
        for permission in permissions:
            menu = get_object_or_404(Menu, pk=permission)
            role.permissions.add(menu)
        return HttpResponseRedirect('system/rbac/role')


# 增加菜单权限
class MenuAddView(View):
    def get(self, request):
        all_menu = Menu.objects.all()
        return render(request, 'rbac/menu_add.html', {'all_menu': all_menu})

    def post(self, request):
        m_form = MenuForm(request.POST)
        if m_form.is_valid():
            try:
                title = m_form['title'].value().strip()
                parent = m_form['parent'].value()
                icon = m_form['icon'].value()
                url = m_form['url'].value().strip()
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
        r_id = request.GET.get('id')
        role = get_object_or_404(Role, pk=r_id)
        permissions = role.permissions.values('id')
        permissions_list = []
        for obj in permissions:
            permissions_list.append(str(obj['id']))
        all_menu = Menu.objects.all()
        return render(request, 'rbac/role_edit.html',
                      {'role': role, 'all_menu': all_menu, 'permissions_list': permissions_list, 'id': r_id})

    def post(self, request):
        r_id = request.POST.get('id', '')
        title = request.POST.get('title', '')
        permissions = request.POST.getlist('permissions')
        role = get_object_or_404(Role, pk=r_id)
        all_menu = Menu.objects.all()
        if title == '':
            error_msg = '标题不能为空!!!'
            return render(request, 'rbac/role_edit.html',
                          {'error_msg': error_msg, 'all_menu': all_menu, 'title': title,
                           'permissions_list': permissions,
                           'id': r_id})
        if Role.objects.filter(title=title).count() > 0 and title != role.title:
            error_msg = '角色已存在!!!'
            return render(request, 'rbac/role_edit.html',
                          {'error_msg': error_msg, 'all_menu': all_menu, 'title': title,
                           'permissions_list': permissions,
                           'id': r_id})
        if len(permissions) == 0:
            error_msg = '最少指定一个权限!!!'
            return render(request, 'rbac/role_edit.html',
                          {'error_msg': error_msg, 'all_menu': all_menu, 'title': title,
                           'permissions_list': permissions,
                           'id': r_id})
        role.title = title
        role.permissions.clear()
        role.save()
        for permission in permissions:
            menu = get_object_or_404(Menu, pk=permission)
            role.permissions.add(menu)
            role.save()
        return HttpResponseRedirect('system/rbac/role')


# 菜单权限修改
class MenuEditView(View):
    def get(self, request):
        m_id = request.GET.get('id')
        menu = get_object_or_404(Menu, pk=m_id)
        all_menu = Menu.objects.all()
        try:
            parent = menu.parent.id
        except:
            parent = None
        m_form = MenuForm(
            {'title': menu.title, 'parent': parent, 'is_top': menu.is_top, 'icon': menu.icon, 'code': menu.code,
             'url': menu.url})
        return render(request, 'rbac/menu_edit.html', {'all_menu': all_menu, 'm_form': m_form, 'id': m_id})

    def post(self, request):
        m_form = MenuForm(request.POST)
        m_id = request.POST.get('id')
        if m_form.is_valid():
            try:
                title = m_form['title'].value().strip()
                parent = m_form['parent'].value()
                icon = m_form['icon'].value()
                url = m_form['url'].value().strip()
                is_top = m_form['is_top'].value()
                code = m_form['code'].value()
                try:
                    menu = get_object_or_404(Menu, pk=m_id)
                    o_title = menu.title
                    o_url = menu.url
                except:
                    all_menu = Menu.objects.all()
                    return render(request, 'rbac/menu_edit.html', {'m_form': m_form, 'all_menu': all_menu, 'id': m_id})
                menu.title = title
                if parent == '':
                    menu.parent = None
                else:
                    parent = int(parent)
                    p_menu = Menu.objects.get(id=parent)
                    menu.parent = p_menu
                menu.icon = icon
                if url == 'None':
                    menu.url = None
                else:
                    menu.url = url
                menu.is_top = is_top
                menu.code = code
                is_exist = Menu.objects.filter(title=title).count()
                if is_exist > 1 or (title != o_title and is_exist == 1):
                    all_menu = Menu.objects.all()
                    error_msg = '标题已经存在'
                    return render(request, 'rbac/menu_edit.html',
                                  {'m_form': m_form, 'all_menu': all_menu, 'error_msg': error_msg, 'id': m_id})
                is_exist = Menu.objects.filter(url=url).count()
                if is_exist > 1 or (url != o_url and is_exist == 1):
                    all_menu = Menu.objects.all()
                    error_msg = 'URL已经存在'
                    return render(request, 'rbac/menu_edit.html',
                                  {'m_form': m_form, 'all_menu': all_menu, 'error_msg': error_msg, 'id': m_id})
                menu.save()
                return HttpResponseRedirect('system/rbac/menu')
            except:
                all_menu = Menu.objects.all()
                error_msg = '出现未知错误！或请联系管理员!!!'
                return render(request, 'rbac/menu_edit.html',
                              {'m_form': m_form, 'all_menu': all_menu, 'error_msg': error_msg, 'id': m_id})
        else:
            all_menu = Menu.objects.all()
            return render(request, 'rbac/menu_edit.html', {'m_form': m_form, 'all_menu': all_menu, 'id': m_id})


# 删除菜单
class MenuDeleteView(View):
    def post(self, request):
        ids = request.POST.getlist('id')
        if len(ids) > 1:
            try:
                menu = Menu.objects.filter(id__in=ids)
                menu.delete()
                status = 'success'
            except:
                status = 'fail'
        elif len(ids) == 1:
            try:
                menu = Menu.objects.get(id=ids[0])
                menu.delete()
                status = 'success'
            except:
                status = 'fail'
        else:
            status = 'fail'
        return JsonResponse({'status': status})


# 删除角色
class RoleDeleteView(View):
    def post(self, request):
        ids = request.POST.getlist('id')
        return render(request, 'personal/index.html')
        if len(ids) > 1:
            try:
                roles = Role.objects.filter(id__in=ids)
                for role in roles:
                    role.permissions.clear()
                roles.delete()
                status = 'success'
            except:
                status = 'fail'
        elif len(ids) == 1:
            try:
                role = Role.objects.get(id=ids[0])
                role.permissions.clear()
                role.delete()
                status = 'success'
            except:
                status = 'fail'
        else:
            status = 'fail'
        return JsonResponse({'status': status})
