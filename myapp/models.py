from django.db import models


class User(models.Model):
    user_name = models.CharField(max_length=100, blank=False)
    password = models.CharField(max_length=100, blank=False)
    role = models.IntegerField(blank=True, null=True)

    def __str__(self):
        return self.user_name


# Create your models here.
class Doctor(models.Model):
    user_name = models.CharField(max_length=100, blank=False)
    password = models.CharField(max_length=100, blank=False)
    doctor_id = models.CharField(max_length=100, blank=True)
    CID = models.CharField(max_length=100, blank=False)
    name = models.CharField(max_length=100, blank=False)
    date_of_birth = models.DateField(blank=False)
    address = models.CharField(max_length=100, blank=False)
    phone_number = models.CharField(max_length=100, blank=False)
    qualification = models.CharField(max_length=100, blank=False)
    specialization = models.CharField(max_length=100, blank=False)
    salary = models.FloatField(blank=False)
    bonus = models.FloatField(blank=False)

    def __str__(self):
        return self.name


class Nurse(models.Model):
    user_name = models.CharField(max_length=100, blank=False)
    password = models.CharField(max_length=100, blank=False)
    nurse_id = models.CharField(max_length=100, blank=True)
    CID = models.CharField(max_length=100, blank=False)
    name = models.CharField(max_length=100, blank=False)
    date_of_birth = models.DateField(blank=False)
    address = models.CharField(max_length=100, blank=False)
    phone_number = models.CharField(max_length=100, blank=False)
    qualification = models.CharField(max_length=100, blank=False)
    salary = models.FloatField(blank=False)
    bonus = models.FloatField(blank=False)

    def __str__(self):
        return self.name


class Patient(models.Model):
    patient_id = models.CharField(max_length=100, blank=True)
    CID = models.CharField(max_length=100, blank=False)
    name = models.CharField(max_length=100, blank=False)
    date_of_birth = models.DateField(blank=False)
    address = models.CharField(max_length=100, blank=False)
    phone_number = models.CharField(max_length=100, blank=False)

    def __str__(self):
        return self.name


class Disease(models.Model):
    disease_id = models.CharField(max_length=100, blank=True)
    name = models.CharField(max_length=100, blank=False)
    description = models.CharField(max_length=100, blank=False)

    def __str__(self):
        return self.name


class Medicine(models.Model):
    medicine_id = models.CharField(max_length=100, blank=True)
    name = models.CharField(max_length=100, blank=False)
    description = models.CharField(max_length=100, blank=False)
    price = models.FloatField(blank=False)

    def __str__(self):
        return self.name


class Service(models.Model):
    service_id = models.IntegerField(),
    name = models.CharField(max_length=100, blank=False)
    description = models.CharField(max_length=100, blank=False)
    price = models.FloatField(blank=False)

    def __str__(self):
        return self.name


class Description(models.Model):
    content = models.CharField(max_length=100, blank=False)
    description = models.CharField(max_length=100, blank=True)
    time = models.DateTimeField(blank=False)

    def __str__(self):
        return self.content


class Register(models.Model):
    CID = models.CharField(max_length=100, blank=False)


class Visit(models.Model):
    visit_id = models.IntegerField()
    patient_id = models.CharField(max_length=100, blank=False)
    nurse_id = models.CharField(max_length=100, blank=False)
    diagnose = models.CharField(max_length=100, blank=True)
    visit_date = models.DateTimeField(blank=False)

    def __str__(self):
        return self.visit_id

