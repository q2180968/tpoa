from django.shortcuts import render, HttpResponseRedirect
from django.views.generic.base import View


# Create your views here.

class IndexView(View):
    def get(self, request):
        return HttpResponseRedirect('/personal/')
