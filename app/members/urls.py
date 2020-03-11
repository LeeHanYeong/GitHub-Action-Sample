from django.urls import path

from . import views

app_name = 'members'
urlpatterns = [
    path('', views.UserListView.as_view(), name='user-list'),
]
