from django.conf.urls import url
from django.views.generic import TemplateView
from users.views import SystemView, StructureView, StructureAddView, StructureEditView, StructureDeleteView
from users.views_user import UserView, UserAdd, UserDelete, UserEdit

urlpatterns = [
    url(r'^$', SystemView.as_view(), name='system'),
    url(r'structure/$', StructureView.as_view(), name='structure'),
    url(r'structure/add$', StructureAddView.as_view(), name='structure_add'),
    url(r'structure/edit$', StructureEditView.as_view(), name='structure_edit'),
    url(r'structure/delete$', StructureDeleteView.as_view(), name='structure_delete'),
    url(r'user/$', UserView.as_view(), name='user'),
    url(r'user/add$', UserAdd.as_view(), name='user_add'),
    url(r'user/delete$', UserDelete.as_view(), name='user_delete'),
    url(r'user/edit$', UserEdit.as_view(), name='user_edit'),
]
