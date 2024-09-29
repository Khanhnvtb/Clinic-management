from django import forms
from .models import *


class DoctorForm(forms.ModelForm):
    class Meta:
        model = Doctor
        fields = "__all__"
        widgets = {
            'doctor_id': forms.HiddenInput(),
        }

    def clean(self):
        cleaned_data = super().clean()

        # Create a Doctor instance from the cleaned data
        doctor = Doctor(
            user_name=cleaned_data.get('user_name'),
            password=cleaned_data.get('password'),
            doctor_id=cleaned_data.get('doctor_id'),
            CID=cleaned_data.get('CID'),
            name=cleaned_data.get('name'),
            date_of_birth=cleaned_data.get('date_of_birth'),
            address=cleaned_data.get('address'),
            phone_number=cleaned_data.get('phone_number'),
            qualification=cleaned_data.get('qualification'),
            specialization=cleaned_data.get('specialization'),
            salary=cleaned_data.get('salary'),
            bonus=cleaned_data.get('bonus'),
        )
        cleaned_data['doctor'] = doctor

        return cleaned_data


class NurseForm(forms.ModelForm):
    class Meta:
        model = Nurse
        fields = "__all__"
        widgets = {
            'nurse_id': forms.HiddenInput(),
        }


class PatientForm(forms.ModelForm):
    class Meta:
        model = Patient
        fields = "__all__"
        widgets = {
            'patient_id': forms.HiddenInput(),
        }


class DiseaseForm(forms.ModelForm):
    class Meta:
        model = Disease
        fields = "__all__"
        widgets = {
            'disease_id': forms.HiddenInput(),
        }


class MedicineForm(forms.ModelForm):
    class Meta:
        model = Medicine
        fields = "__all__"
        widgets = {
            'medicine_id': forms.HiddenInput(),
        }


class ServiceForm(forms.ModelForm):
    class Meta:
        model = Service
        fields = "__all__"
        widgets = {
            'service_id': forms.HiddenInput(),
        }


class BonusForm(forms.Form):
    description = forms.CharField()


class IncomeForm(forms.Form):
    user_id = forms.CharField(widget=forms.HiddenInput())
    month = forms.CharField(label='Tháng')
    salary = forms.FloatField(label='Lương')
    bonus = forms.Field(label='Thưởng')
    total = forms.FloatField(label='Tổng thu nhập')
    flag = forms.BooleanField(widget=forms.HiddenInput())
