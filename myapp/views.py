from datetime import datetime

from django.http import HttpResponse
from django.contrib import messages
from django.shortcuts import render, redirect
from pymongo import MongoClient
from .forms import *
from django.forms import formset_factory


def get_db_handle():
    client = MongoClient('mongodb://localhost:27017/?authSource=clinic_db')
    db_handle = client['clinic_db']
    return db_handle, client


def login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        db_handle, client = get_db_handle()
        user = db_handle['Users'].find_one({"username": username, "password": password})
        client.close()

        if user:
            if user['role'] == 1:
                user_id = db_handle['Doctors'].find_one({"username": username})
            elif user['role'] == 2:
                user_id = db_handle['Nurses'].find_one({"username": username})
            else:
                user_id = 'admin'
            # Lưu thông tin user vào session
            request.session['user'] = {
                'user_id': user_id,
                'role': user['role'],
            }
            return redirect('home')
        else:
            return HttpResponse("Đăng nhập thất bại. Vui lòng thử lại.")

    return render(request, 'login.html')


def logout(request):
    if 'user' in request.session:
        del request.session['user']  # Xóa thông tin người dùng trong session
    return redirect('login')


def add_doctor(request):
    # if request.session['user']['role'] == 'admin':
        if request.method == "POST":
            form = DoctorForm(request.POST)
            if form.is_valid():
                db_handle, client = get_db_handle()
                doctor = form.cleaned_data['doctor']
                if not db_handle['Doctors'].find_one({"CID": doctor.CID}):
                    no = int(db_handle['Doctors'].find().sort("doctor_id", -1).limit(1)[0]['doctor_id'][1:]) + 1
                    db_handle['Doctors'].insert_one({
                        "user_name": doctor.user_name,
                        "doctor_id": "D" + f"{no:03}",
                        "CID": doctor.CID,
                        "name": doctor.name,
                        "date_of_birth": datetime.combine(doctor.date_of_birth, datetime.min.time()),
                        "address": doctor.address,
                        "phone_number": doctor.phone_number,
                        "qualification": doctor.qualification,
                        "specialization": [s for s in doctor.specialization.split()],
                    })
                    storage = messages.get_messages(request)
                    storage.used = True
                    messages.add_message(request, messages.SUCCESS, 'Thêm bác sĩ thành công')

                else:
                    storage = messages.get_messages(request)
                    storage.used = True
                    messages.add_message(request, messages.SUCCESS, 'Căn cước công dân đã tồn tại')

        else:
            form = DoctorForm()
    # else:
    #     return render(request, 'home.html')
        return render(request, 'add.html', {'form': form, 'flag': 1})


# def get_home(request):
#     if request.method == "POST":
#         form = TestForm(request.POST)
#         if form.is_valid():
#             db, client = get_db_handle()
#             collection = db['Doctors']
#             new_todo = {
#                 "text": form.cleaned_data["text"],
#                 "text1": form.cleaned_data['text1']
#             }
#             collection.insert_one(new_todo)
#             client.close()
#     else:
#         form = TestForm()
#     return render(request, 'home.html', {"form": form})


# def get_all_income(request):


# def get_income(request, user_id):
#     db_handle, client = get_db_handle()

    # form = IncomeForm(request.POST)
    # BonusFormSet = formset_factory(BonusForm, extra=1)
    # bonus_formset = BonusFormSet(request.POST, prefix='bonus')  # prefix để nhóm các form
    #
    # if form.is_valid() and bonus_formset.is_valid():
    #     # Xử lý dữ liệu
    #     user_id = form.cleaned_data['user_id']
    #     # Lưu dữ liệu bonus
    #     for bonus_form in bonus_formset:
    #         if bonus_form.cleaned_data:  # Chỉ xử lý form hợp lệ
    #             description = bonus_form.cleaned_data['description']
    #             money = bonus_form.cleaned_data['money']
    #             # Lưu thông tin bonus vào cơ sở dữ liệu
    #
    # else:
    #     form = IncomeForm(initial={'user_id': 'giá_trị_mặc_dịch'})
    #     bonus_formset = BonusFormSet(queryset=BonusForm.objects.none(), prefix='bonus')
