from django.conf.urls import url, include
from rbac.views import MenuView, RoleView, RoleAddView, RoleEditView, MenuAddView, MenuEditView

urlpatterns = [
    url(r'menu/$', MenuView.as_view(), name='menu'),
    url(r'role/$', RoleView.as_view(), name='role'),
    url(r'menu/add$', MenuAddView.as_view(), name='menu_add'),
    url(r'menu/edit$', MenuEditView.as_view(), name='menu_edit'),
    url(r'role/add$', RoleAddView.as_view(), name='role_add'),
    url(r'role/edit$', RoleEditView.as_view(), name='role_edit'),
]
