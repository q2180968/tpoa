from django.shortcuts import render, HttpResponseRedirect
from django.http import JsonResponse
from django.views.generic.base import View
from users.models import Structure
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger
from users.forms import StructureForm


# Create your views here.
# INDEX即工作台首页
class IndexView(View):
    def get(self, request):
        return HttpResponseRedirect('/personal/')


# 系统菜单
class SystemView(View):
    def get(self, request):
        return render(request, 'system/system.html')


# 机构列表
class StructureView(View):
    def get(self, request):
        all_structure = Structure.objects.all()
        count = all_structure.count()
        # 分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(all_structure, 10, request=request)
        all_structure = p.page(page)
        return render(request, 'system/structure.html', {'all_structure': all_structure, 'count': count})


# 增加机构
class StructureAddView(View):
    def get(self, request):
        all_structure = Structure.objects.all()
        types = Structure.type_choices
        return render(request, 'system/structure_add.html', {'all_structure': all_structure, 'types': types})

    def post(self, request):
        structure_form = StructureForm(request.POST)
        if structure_form.is_valid():
            s_title = structure_form['title'].value()
            s_type = structure_form['type'].value()
            if int(structure_form['parent'].value()) != -1:
                s_parent = structure_form['parent'].value()
                p_structure = Structure.objects.get(id=s_parent)
            else:
                s_parent = None
            new_structure = Structure(title=s_title, type=s_type, parent=p_structure)
            new_structure.save()
            return HttpResponseRedirect('basic/structure/')
        else:
            all_structure = Structure.objects.all()
            types = Structure.type_choices
            return render(request, 'system/structure_add.html',
                          {'s_form': structure_form, 'all_structure': all_structure, 'types': types})


# 修改机构
class StructureEditView(View):
    def get(self, request):
        all_structure = Structure.objects.all()
        s_id = request.GET.get('s_id')
        structure = Structure.objects.get(id=s_id)
        try:
            parent = structure.parent.id
        except:
            parent = None
        s_form = StructureForm(
            {'title': structure.title, 'type': structure.type, 'parent': parent})
        types = Structure.type_choices
        return render(request, 'system/structure_edit.html',
                      {'all_structure': all_structure, 's_form': s_form, 'types': types, 'id': s_id})

    def post(self, request):
        structure_form = StructureForm(request.POST)
        s_id = request.POST.get('id')
        if structure_form.is_valid():
            structure = Structure.objects.get(id=s_id)
            s_title = structure_form['title'].value()
            s_type = structure_form['type'].value()
            if structure_form['parent'].value() != -1:
                s_parent = structure_form['parent'].value()
                p_structure = Structure.objects.get(id=s_parent)
            else:
                s_parent = None
            structure = Structure(title=s_title, type=s_type, parent=p_structure)
            structure.save()
            return HttpResponseRedirect('basic/structure/')
        else:
            all_structure = Structure.objects.all()
            types = Structure.type_choices
            return render(request, 'system/structure_edit.html.html',
                          {'s_form': structure_form, 'all_structure': all_structure, 'types': types})


# 删除机构
class StructureDeleteView(View):
    def post(self, request):
        ids = request.POST.getlist('id')
        if len(ids) > 1:
            try:
                structure = Structure.objects.filter(id__in=ids)
                structure.delete()
                status = 'success'
            except:
                status = 'fail'
        elif len(ids) == 1:
            try:
                structure = Structure.objects.get(id=ids[0])
                structure.delete()
                status = 'success'
            except:
                status = 'fail'
        else:
            status = 'fail'
        return JsonResponse({'status': status})
