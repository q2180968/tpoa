from django.conf.urls import url
from django.views.generic import TemplateView
from users.views import SystemView, StructureView, StructureAddView, StructureEditView

urlpatterns = [
    url(r'^$', SystemView.as_view(), name='system'),
    url(r'basic/structure/$', StructureView.as_view(), name='structure'),
    url(r'basic/structure/add', StructureAddView.as_view(), name='structure_add'),
    url(r'basic/structure/edit', StructureEditView.as_view(), name='structure_edit'),
]
