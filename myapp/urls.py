from django.urls import path
from . import views

urlpatterns = [
    # path('', views.get_home, name='home'),
    path('add_doctor', views.add_doctor, name='add_doctor'),
]