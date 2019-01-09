from django.shortcuts import render, HttpResponseRedirect
from django.views.generic.base import View


# Create your views here.

class IndexView(View):
    def get(self, request):
        return HttpResponseRedirect('/personal/')


class SystemView(View):
    def get(self, request):
        return render(request, 'system/system.html')
