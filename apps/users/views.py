from django.shortcuts import render, HttpResponseRedirect
from django.views.generic.base import View
from users.models import Structure
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger


# Create your views here.

class IndexView(View):
    def get(self, request):
        return HttpResponseRedirect('/personal/')


class SystemView(View):
    def get(self, request):
        return render(request, 'system/system.html')


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
