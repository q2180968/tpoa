from django.conf.urls import url
from django.views.generic import TemplateView
from users.views import SystemView, StructureView

urlpatterns = [
    url(r'^$', SystemView.as_view(), name='system'),
    url(r'basic/structure/', StructureView.as_view(), name='structure')
]
