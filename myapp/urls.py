from django.urls import path
from . import views

urlpatterns = [
    path('', views.get_home, name='home'),
    path('add_doctor', views.add_doctor, name='add_doctor'),
    path('add_nurse', views.add_nurse, name='add_nurse'),
    path('add_patient', views.add_patient, name='add_patient'),
    path('add_service', views.add_service, name='add_service'),
    path('add_disease', views.add_disease, name='add_disease'),
    path('add_medicine', views.add_medicine, name='add_medicine'),
    path('login', views.login, name='login'),
    path('logout', views.logout, name='logout'),
    path('add_visit', views.add_visit, name='add_visit'),
    path('add_service/<int:visit_id>', views.add_service, name='add_service'),
    path('add_medicine/<int:visit_id>', views.add_medicine, name='add_medicine'),
]