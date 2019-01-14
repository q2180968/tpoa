from django.conf.urls import url, include
from rbac.views import MenuView,RoleView

urlpatterns = [
    url(r'menu/$', MenuView.as_view(), name='menu'),
    url(r'role/$', RoleView.as_view(), name='role'),
]
