from django.conf.urls import url
from django.views.generic import TemplateView
from users.views import SystemView

urlpatterns = [
    url(r'^$', SystemView.as_view(), name='system'),
]
