from django.shortcuts import render
from django.views.generic import View


# Create your views here.
class PersonView(View):
    def get(self, request):
        return render(request, 'personal/index.html')
