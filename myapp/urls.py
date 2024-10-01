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
    path('add_services/<int:visit_id>', views.add_services, name='add_services'),
    path('patient_care', views.patient_care, name='patient_care'),
    path('add_medicines/<int:visit_id>', views.add_medicines, name='add_medicines'),
    path('get_all_income', views.get_all_income, name='get_all_income'),
    path('get_revenue', views.get_revenue, name='get_revenue'),
    path('examination', views.examination, name='examination'),
    path('diagnose/<int:visit_id>', views.diagnose, name='diagnose'),
]