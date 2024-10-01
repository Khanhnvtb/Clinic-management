from django import forms
from .models import *
from pymongo import MongoClient


def get_db_handle():
    client = MongoClient('mongodb://localhost:27017/?authSource=clinic_db')
    db_handle = client['clinic_db']
    return db_handle, client


class UserForm(forms.ModelForm):
    class Meta:
        model = User
        fields = "__all__"
        widgets = {
            'role': forms.HiddenInput(),
        }


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

    def clean(self):
        cleaned_data = super().clean()

        # Create a Nurse instance from the cleaned data
        nurse = Nurse(
            user_name=cleaned_data.get('user_name'),
            password=cleaned_data.get('password'),
            nurse_id=cleaned_data.get('nurse_id'),
            CID=cleaned_data.get('CID'),
            name=cleaned_data.get('name'),
            date_of_birth=cleaned_data.get('date_of_birth'),
            address=cleaned_data.get('address'),
            phone_number=cleaned_data.get('phone_number'),
            qualification=cleaned_data.get('qualification'),
            salary=cleaned_data.get('salary'),
            bonus=cleaned_data.get('bonus'),
        )
        cleaned_data['nurse'] = nurse

        return cleaned_data


class PatientForm(forms.ModelForm):
    class Meta:
        model = Patient
        fields = "__all__"
        widgets = {
            'patient_id': forms.HiddenInput(),
        }

    def clean(self):
        cleaned_data = super().clean()

        # Create a Patient instance from the cleaned data
        patient = Patient(
            patient_id=cleaned_data.get('patient_id'),
            CID=cleaned_data.get('CID'),
            name=cleaned_data.get('name'),
            date_of_birth=cleaned_data.get('date_of_birth'),
            address=cleaned_data.get('address'),
            phone_number=cleaned_data.get('phone_number'),
        )
        cleaned_data['patient'] = patient

        return cleaned_data


class DiseaseForm(forms.ModelForm):
    class Meta:
        model = Disease
        fields = "__all__"
        widgets = {
            'disease_id': forms.HiddenInput(),
        }

    def clean(self):
        cleaned_data = super().clean()

        # Create a Disease instance from the cleaned data
        disease = Disease(
            disease_id=cleaned_data.get('disease_id'),
            name=cleaned_data.get('name'),
            description=cleaned_data.get('description'),
        )
        cleaned_data['disease'] = disease

        return cleaned_data


class MedicineForm(forms.ModelForm):
    class Meta:
        model = Medicine
        fields = "__all__"
        widgets = {
            'medicine_id': forms.HiddenInput(),
        }

    def clean(self):
        cleaned_data = super().clean()

        # Create a Medicine instance from the cleaned data
        medicine = Medicine(
            medicine_id=cleaned_data.get('medicine_id'),
            name=cleaned_data.get('name'),
            description=cleaned_data.get('description'),
            price=cleaned_data.get('price')
        )
        cleaned_data['medicine'] = medicine

        return cleaned_data


class ServiceForm(forms.ModelForm):
    class Meta:
        model = Service
        fields = "__all__"
        widgets = {
            'service_id': forms.HiddenInput(),
        }

    def clean(self):
        cleaned_data = super().clean()

        # Create a Service instance from the cleaned data
        service = Service(
            service_id=cleaned_data.get('service_id'),
            name=cleaned_data.get('name'),
            description=cleaned_data.get('description'),
            price=cleaned_data.get('price')
        )
        cleaned_data['service'] = service

        return cleaned_data


class BonusForm(forms.Form):
    description = forms.CharField()


class IncomeForm(forms.Form):
    user_id = forms.CharField(widget=forms.HiddenInput())
    month = forms.CharField(label='Tháng')
    salary = forms.FloatField(label='Lương')
    bonus = forms.Field(label='Thưởng')
    total = forms.FloatField(label='Tổng thu nhập')
    flag = forms.BooleanField(widget=forms.HiddenInput())

    def clean(self):
        cleaned_data = super().clean()


class VisitForm(forms.ModelForm):
    class Meta:
        model = Visit
        fields = "__all__"

    def clean(self):
        cleaned_data = super().clean()

        # Create a Visit instance from the cleaned data
        visit = Visit(
            visit_id=cleaned_data.get('visit_id'),
            patient_id=cleaned_data.get('patient_id'),
            CID=cleaned_data.get('CID'),
            nurse_id=cleaned_data.get('nurse_id'),
            diagnose=cleaned_data.get('diagnose'),
            visit_date=cleaned_data.get('visit_date'),
        )
        cleaned_data['visit'] = visit

        return cleaned_data


class RegisterForm(forms.ModelForm):
    class Meta:
        model = Register
        fields = "__all__"

    def clean(self):
        cleaned_data = super().clean()

        # Create a Register instance from the cleaned data
        register = Register(
            CID=cleaned_data.get('CID'),
        )
        cleaned_data['register'] = register

        return cleaned_data


def get_services():
    db_handle, client = get_db_handle()
    services = db_handle['Services'].find({})
    return [(service["service_id"], service["name"]) for service in services]

def get_medicines():
    db_handle, client = get_db_handle()
    medicines = db_handle['Medicines'].find({})
    return [(medicine["medicine_id"], medicine["name"]) for medicine in medicines]


class DescriptionForm(forms.Form):
    service = forms.ChoiceField(
        choices=get_services(),
        label="Chọn dịch vụ", required=False
    )
    medicine = forms.ChoiceField(
        choices=get_medicines(),
        label="Chọn thuốc", required=False
    )
    quantity = forms.IntegerField(label="Số lượng")  # Thêm label cho trường quantity


class Diagnose(forms.Form):
    content = forms.CharField()
    description = forms.CharField()

    def clean(self):
        cleaned_data = super().clean()

        diagnose = Diagnose(
            content=cleaned_data.get('content'),
            description=cleaned_data.get('description'),
        )
        cleaned_data['diagnose'] = diagnose

        return cleaned_data


class MonthForm(forms.Form):
    month = forms.CharField(max_length=6)
