from datetime import datetime, timedelta
from operator import truediv

from django.contrib import messages
from django.shortcuts import render, redirect
from .forms import *
from django.forms import formset_factory


def login(request):
    if request.method == 'POST':
        form = UserForm(request.POST)
        if form.is_valid():
            user_name = form.cleaned_data['user_name']
            password = form.cleaned_data['password']

            db_handle, client = get_db_handle()
            user = db_handle['Users'].find_one({"user_name": user_name, "password": password})

            if user:
                if user['role'] == 1:
                    user_id = db_handle['Doctors'].find_one({"user_name": user_name})['doctor_id']
                elif user['role'] == 2:
                    user_id = db_handle['Nurses'].find_one({"user_name": user_name})['nurse_id']
                else:
                    user_id = 'admin'
                # Lưu thông tin user vào session
                request.session['user'] = {
                    'user_id': user_id,
                    'role': user['role'],
                }
                return redirect('home')
            else:
                storage = messages.get_messages(request)
                storage.used = True
                messages.add_message(request, messages.SUCCESS, "Đăng nhập thất bại. Vui lòng thử lại.")
            client.close()
    else:
        form = UserForm()
    return render(request, 'login.html', {'form': form})


def logout(request):
    if 'user' in request.session:
        del request.session  # Xóa thông tin người dùng trong session
    return redirect('login')


def add_doctor(request):
    if request.session['user']['role'] == 3:
        if request.method == "POST":
            form = DoctorForm(request.POST)
            if form.is_valid():
                db_handle, client = get_db_handle()
                doctor = form.cleaned_data['doctor']
                if db_handle['Users'].find_one({"username": doctor.user_name}):
                    storage = messages.get_messages(request)
                    storage.used = True
                    messages.add_message(request, messages.SUCCESS, 'Tài khoản đã tồn tại')
                else:
                    if not db_handle['Doctors'].find_one({"CID": doctor.CID}):
                        no = int(db_handle['Doctors'].find().sort("doctor_id", -1).limit(1)[0]['doctor_id'][1:]) + 1
                        db_handle['Users'].insert_one({
                            'user_name': doctor.user_name,
                            'password': doctor.password,
                            'role': 1,
                        })
                        db_handle['Doctors'].insert_one({
                            "user_name": doctor.user_name,
                            "doctor_id": "D" + f"{no:03}",
                            "CID": doctor.CID,
                            "name": doctor.name,
                            "date_of_birth": datetime.combine(doctor.date_of_birth, datetime.min.time()),
                            "address": doctor.address,
                            "phone_number": doctor.phone_number,
                            "qualification": doctor.qualification,
                            "specialization": [s for s in doctor.specialization.split(',')],
                        })
                        storage = messages.get_messages(request)
                        storage.used = True
                        messages.add_message(request, messages.SUCCESS, 'Thêm bác sĩ thành công')
                    else:
                        storage = messages.get_messages(request)
                        storage.used = True
                        messages.add_message(request, messages.SUCCESS, 'Căn cước công dân đã tồn tại')
                client.close()
        else:
            form = DoctorForm()
    else:
        return redirect('home')
    return render(request, 'add.html', {'form': form, 'flag': 1})


def add_nurse(request):
    if request.session['user']['role'] == 3:
        if request.method == "POST":
            form = NurseForm(request.POST)
            if form.is_valid():
                db_handle, client = get_db_handle()
                nurse = form.cleaned_data['nurse']
                if db_handle['Users'].find_one({"username": nurse.user_name}):
                    storage = messages.get_messages(request)
                    storage.used = True
                    messages.add_message(request, messages.SUCCESS, 'Tài khoản đã tồn tại')
                else:
                    if not db_handle['Nurses'].find_one({"CID": nurse.CID}):
                        no = int(db_handle['Nurses'].find().sort("nurse_id", -1).limit(1)[0]['nurse_id'][1:]) + 1
                        db_handle['Users'].insert_one({
                            'user_name': nurse.user_name,
                            'password': nurse.password,
                            'role': 2,
                        })
                        db_handle['Nurses'].insert_one({
                            "user_name": nurse.user_name,
                            "nurse_id": "N" + f"{no:03}",
                            "CID": nurse.CID,
                            "name": nurse.name,
                            "date_of_birth": datetime.combine(nurse.date_of_birth, datetime.min.time()),
                            "address": nurse.address,
                            "phone_number": nurse.phone_number,
                            "qualification": nurse.qualification,
                        })
                        storage = messages.get_messages(request)
                        storage.used = True
                        messages.add_message(request, messages.SUCCESS, 'Thêm y tá thành công')

                    else:
                        storage = messages.get_messages(request)
                        storage.used = True
                        messages.add_message(request, messages.SUCCESS, 'Căn cước công dân đã tồn tại')
                client.close()
        else:
            form = NurseForm()
    else:
        return redirect('home')
    return render(request, 'add.html', {'form': form, 'flag': 2})


def add_patient(request):
    if request.session['user']['role'] == 3:
        if request.method == "POST":
            form = PatientForm(request.POST)
            if form.is_valid():
                db_handle, client = get_db_handle()
                patient = form.cleaned_data['patient']
                if db_handle['Users'].find_one({"username": patient.user_name}):
                    storage = messages.get_messages(request)
                    storage.used = True
                    messages.add_message(request, messages.SUCCESS, 'Tài khoản đã tồn tại')
                else:
                    if not db_handle['Patients'].find_one({"CID": patient.CID}):
                        no = int(db_handle['Patients'].find().sort("patient_id", -1).limit(1)[0]['patient_id'][1:]) + 1
                        db_handle['Patients'].insert_one({
                            "patient_id": "P" + f"{no:03}",
                            "CID": patient.CID,
                            "name": patient.name,
                            "date_of_birth": datetime.combine(patient.date_of_birth, datetime.min.time()),
                            "address": patient.address,
                            "phone_number": patient.phone_number,
                        })
                        storage = messages.get_messages(request)
                        storage.used = True
                        messages.add_message(request, messages.SUCCESS, 'Thêm bệnh nhân thành công')
                    else:
                        storage = messages.get_messages(request)
                        storage.used = True
                        messages.add_message(request, messages.SUCCESS, 'Căn cước công dân đã tồn tại')
                client.close()
        else:
            form = PatientForm()
    else:
        return redirect('home')
    return render(request, 'add.html', {'form': form, 'flag': 3})


def add_medicine(request):
    if request.session['user']['role'] == 3:
        if request.method == "POST":
            form = MedicineForm(request.POST)
            if form.is_valid():
                db_handle, client = get_db_handle()
                medicine = form.cleaned_data['medicine']
                if not db_handle['Medicines'].find_one({"name": medicine.name}):
                    no = int(db_handle['Medicines'].find().sort("medicine_id", -1).limit(1)[0]['medicine_id'][3:]) + 1
                    db_handle['Medicines'].insert_one({
                        "medicine_id": "MED" + f"{no:03}",
                        "name": medicine.name,
                        "description": medicine.description,
                        "price": medicine.price,
                    })
                    storage = messages.get_messages(request)
                    storage.used = True
                    messages.add_message(request, messages.SUCCESS, 'Thêm thuốc thành công')
                else:
                    storage = messages.get_messages(request)
                    storage.used = True
                    messages.add_message(request, messages.SUCCESS, 'Thuốc đã tồn tại')
                client.close()
        else:
            form = MedicineForm()
    else:
        return redirect('home')
    return render(request, 'add.html', {'form': form, 'flag': 4})


def add_service(request):
    if request.session['user']['role'] == 3:
        if request.method == "POST":
            form = ServiceForm(request.POST)
            if form.is_valid():
                db_handle, client = get_db_handle()
                service = form.cleaned_data['service']
                if not db_handle['Services'].find_one({"name": service.name}):
                    no = db_handle['Service'].find().sort("service_id", -1).limit(1)[0]['service'] + 1
                    db_handle['Service'].insert_one({
                        "service_id": no,
                        "name": service.name,
                        "description": service.description,
                        "price": service.price,
                    })
                    storage = messages.get_messages(request)
                    storage.used = True
                    messages.add_message(request, messages.SUCCESS, 'Thêm dịch vụ thành công')
                else:
                    storage = messages.get_messages(request)
                    storage.used = True
                    messages.add_message(request, messages.SUCCESS, 'Dịch vụ đã tồn tại')
                client.close()
        else:
            form = ServiceForm()
    else:
        return redirect('home')
    return render(request, 'add.html', {'form': form, 'flag': 5})


def add_disease(request):
    if request.session['user']['role'] == 3:
        if request.method == "POST":
            form = DiseaseForm(request.POST)
            if form.is_valid():
                db_handle, client = get_db_handle()
                disease = form.cleaned_data['disease']
                if not db_handle['Diseases'].find_one({"name": disease.name}):
                    no = int(db_handle['Diseases'].find().sort("disease_id", -1).limit(1)[0]['disease_id'][2:]) + 1
                    db_handle['Diseases'].insert_one({
                        "disease_id": "DS" + f"{no:03}",
                        "name": disease.name,
                        "description": disease.description,
                    })
                    storage = messages.get_messages(request)
                    storage.used = True
                    messages.add_message(request, messages.SUCCESS, 'Thêm bệnh thành công')
                else:
                    storage = messages.get_messages(request)
                    storage.used = True
                    messages.add_message(request, messages.SUCCESS, 'Bệnh đã tồn tại')
                client.close()
        else:
            form = DiseaseForm()
    else:
        return redirect('home')
    return render(request, 'add.html', {'form': form, 'flag': 6})


def get_home(request):
    return render(request, 'home.html')


def add_visit(request):
    if request.session['user']['role'] == 2:
        if request.method == "POST":
            form = RegisterForm(request.POST)
            if form.is_valid():
                db_handle, client = get_db_handle()
                register = form.cleaned_data['register']
                no = db_handle['Visits'].find().sort("visit_id", -1).limit(1)[0]['visit_id'] + 1
                patient = db_handle['Patients'].find_one({'CID': register.CID})
                if not patient:
                    storage = messages.get_messages(request)
                    storage.used = True
                    messages.add_message(request, messages.SUCCESS, 'Mời thêm mới bệnh nhân')
                    redirect('add_patient')
                else:
                    db_handle['Visits'].insert_one({
                        "visit_id": no,
                        "nurse_id": request.session['user']['user_id'],
                        "patient_id": patient['patient_id'],
                        "visit_date": datetime.now()
                    })
                storage = messages.get_messages(request)
                storage.used = True
                messages.add_message(request, messages.SUCCESS, 'Đăng ký khám thành công')
                client.close()
                return redirect('add_service', visit_id=no)
            else:
                storage = messages.get_messages(request)
                storage.used = True
                messages.add_message(request, messages.SUCCESS, 'Mời nhập thông tin')
        else:
            form = RegisterForm()
    else:
        return redirect('home')
    return render(request, 'add_visit.html', {'form': form})


def add_service(request, visit_id):
    if request.session['user']['role'] == 2:
        # Tạo formset với 1 form trống
        DescriptionFormSet = formset_factory(DescriptionForm, extra=2)

        if request.method == "POST":
            # Bind dữ liệu từ request.POST vào formset
            formset = DescriptionFormSet(request.POST or None)

            if formset.is_valid():
                descriptions = []
                services = []
                total = 0
                db_handle, client = get_db_handle()

                # Lặp qua từng form trong formset
                for form in formset:
                    if form.is_valid():
                        service_id = form.cleaned_data.get('service')
                        service = db_handle['Services'].find_one({"service_id": int(service_id)})
                        # Thêm mô tả dịch vụ
                        descriptions.append({
                            'content': service['name']
                        })

                        services.append({
                            'service_id': service_id,
                            'quantity': form.cleaned_data.get('quantity')
                        })

                        # Cộng tổng giá
                        total += service['price'] * form.cleaned_data.get('quantity')

                # Cập nhật Visit với descriptions
                db_handle['Visits'].update_one(
                    {'visit_id': visit_id},
                    {'$set': {'descriptions': descriptions}}
                )

                # Tạo bill mới
                no = db_handle['Bills'].find().sort("bill_id", -1).limit(1)[0]['bill_id'] + 1

                bill = {
                    'bill_id': no,
                    'services': services,
                    'total': total
                }

                # Thêm bill mới vào collection Bills
                db_handle['Bills'].insert_one(bill)

                return redirect('home')
        else:
            # Nếu là GET, chỉ khởi tạo formset rỗng
            formset = DescriptionFormSet()

        return render(request, 'add_service.html',
                      {'formset': formset, 'visit_id': visit_id, 'flag': 1, 'url': 'add_service'})
    else:
        return redirect('home')


def add_medicine(request, visit_id):
    if request.session['user']['role'] == 2:
        # Tạo formset với 1 form trống
        DescriptionFormSet = formset_factory(DescriptionForm, extra=2)

        if request.method == "POST":
            # Bind dữ liệu từ request.POST vào formset
            formset = DescriptionFormSet(request.POST or None)

            if formset.is_valid():
                descriptions = []
                medicines = []
                total = 0
                db_handle, client = get_db_handle()

                # Lặp qua từng form trong formset
                for form in formset:
                    if form.is_valid():
                        medicine_id = form.cleaned_data.get('medicine')
                        medicine = db_handle['Medicines'].find_one({"medicine_id": medicine_id})
                        # Thêm mô tả dịch vụ
                        descriptions.append({
                            'content': medicine['name']
                        })

                        medicines.append({
                            'medicine_id': medicine_id,
                            'quantity': form.cleaned_data.get('quantity')
                        })

                        # Cộng tổng giá
                        total += medicine['price'] * form.cleaned_data.get('quantity')

                # Cập nhật Visit với descriptions
                db_handle['Visits'].update_one(
                    {'visit_id': visit_id},
                    {'$set': {'descriptions': descriptions}}
                )

                # Tạo bill mới
                no = db_handle['Bills'].find().sort("bill_id", -1).limit(1)[0]['bill_id'] + 1

                bill = {
                    'bill_id': no,
                    'medicines': medicines,
                    'total': total
                }

                # Thêm bill mới vào collection Bills
                db_handle['Bills'].insert_one(bill)

                return redirect('home')
        else:
            # Nếu là GET, chỉ khởi tạo formset rỗng
            formset = DescriptionFormSet()

        return render(request, 'add_service.html',
                      {'formset': formset, 'visit_id': visit_id, 'flag': 2, 'url': 'add_medicine'})
    else:
        return redirect('home')


def get_date(input_month):
    month = int(input_month[:2])
    year = int(input_month[2:])

    current_date = datetime.now()
    current_month = current_date.month
    current_year = current_date.year

    if month == current_month and year == current_year:
        return current_date, 1
    else:
        first_day_of_month = datetime(year=year, month=month, day=1)

        next_month = first_day_of_month.replace(day=28) + timedelta(days=4)
        last_day_of_month = next_month - timedelta(days=next_month.day)

        return last_day_of_month, 0


def get_range_date(day):
    first_day_of_current_month = day.replace(day=1)
    start_date = first_day_of_current_month - timedelta(days=1)
    start_date = start_date.replace(day=1)

    end_date = day - timedelta(days=30)

    if start_date > end_date:
        start_date = end_date
    return start_date, end_date


def get_all_income(request):
    if request.method == "POST":
        input_month = request.POST.get('input_month')
        try:
            # Chọn thời gian được nhận thưởng
            day, is_current_month = get_date(input_month)
            start_date, end_date = get_range_date(day)
            db_handle, client = get_db_handle()
            if request.session['user']['role'] == 3:
                user_names = db_handle['Users'].find({"role": {"$ne": 3}}, {"_id": 0, "user_name": 1})
                user_names = [user_name['user_name'] for user_name in user_names]
                incomes = list(db_handle['Incomes'].find(
                    {"month": input_month, 'flag': True},
                    {"_id": 0, "user_id": 1, "month": 1, "salary": 1, "bonus": 1, "total": 1}
                ))
            elif request.session['user']['role'] == 1:
                user_names = db_handle['Doctors'].find({"doctor_id": request.session['user']['user_id']},
                                                           {"_id": 0, "user_name": 1})
                user_names = [user_name['user_name'] for user_name in user_names]
                incomes = list(db_handle['Incomes'].find(
                    {"month": input_month,
                     'user_id': request.session['user']['user_id'], 'flag': True},
                    {"_id": 0, "user_id": 1, "month": 1, "salary": 1, "bonus": 1, "total": 1}
                ))
            else:
                user_names = db_handle['Nurses'].find({"nurse_id": request.session['user']['user_id']},
                                                          {"_id": 0, "user_name": 1})
                user_names = [user_name['user_name'] for user_name in user_names]
                incomes = list(db_handle['Incomes'].find(
                    {"month": input_month,
                     'user_id': request.session['user']['user_id'], 'flag': True},
                    {"_id": 0, "user_id": 1, "month": 1, "salary": 1, "bonus": 1, "total": 1}
                ))
            if incomes:
                client.close()
            else:
                doctors = db_handle['Doctors'].find({"user_name": {"$in": user_names}},
                                                    {"_id": 0, "doctor_id": 1, "salary": 1, "bonus": 1})
                nurses = db_handle['Nurses'].find({"user_name": {"$in": user_names}},
                                                  {"_id": 0, "nurse_id": 1, "salary": 1, "bonus": 1})
                # Lấy ra tất cả lần khám bệnh nằm trong khoảng yêu cầu
                visits = db_handle['Visits'].find({"visit_date": {"$gte": start_date, "$lte": end_date}},
                                                  {"_id": 0, "visit_id": 1})
                visit_ids = [visit["visit_id"] for visit in visits]

                incomes = []

                for doctor in doctors:
                    income = {
                        "user_id": doctor['doctor_id'],
                        "month": input_month,
                        "salary": doctor['salary'],
                        "bonus": [
                        ],
                        "total": doctor['salary'],
                        "flag": True
                    }
                    bonus = doctor['bonus']
                    histories = db_handle['MedicalHistory'].find({"doctor_id": doctor["doctor_id"]})
                    for history in histories:
                        # Nếu lần khám cuối cùng nằm trong khoảng thời gian được nhận thưởng
                        if history['visit_ids'][-1] in visit_ids:
                            disease = db_handle['Diseases'].find_one({"disease_id": history["disease_id"]}, )['name']
                            patient = db_handle['Patients'].find_one({"patient_id": history["patient_id"]}, )['name']
                            income['bonus'].append({
                                'description': f'Chữa khỏi bệnh {disease} cho bệnh nhân {patient}',
                                'money': bonus,
                            })
                            income['total'] += bonus
                    incomes.append(income)

                for nurse in nurses:
                    income = {
                        "user_id": nurse['nurse_id'],
                        "month": input_month,
                        "salary": nurse['salary'],
                        "bonus": [
                        ],
                        "total": nurse['salary'],
                        "flag": True
                    }
                    bonus = nurse['bonus']
                    histories = db_handle['MedicalHistory'].find({"nurse_ids": {"$in": [nurse['nurse_id']]}})
                    for history in histories:
                        # Nếu lần khám cuối cùng nằm trong khoảng thời gian được nhận thưởng
                        if history['visit_ids'][-1] in visit_ids:
                            disease = db_handle['Diseases'].find_one({"disease_id": history["disease_id"]}, )['name']
                            patient = db_handle['Patients'].find_one({"patient_id": history["patient_id"]}, )['name']
                            income['bonus'].append({
                                'description': f'Tham gia chữa khỏi bệnh {disease} cho bệnh nhân {patient}',
                                'money': bonus,
                            })
                            income['total'] += bonus
                    incomes.append(income)
                if is_current_month == 0 and request.session['user']['role'] == 3:
                    db_handle['Incomes'].insert_many(incomes)
            client.close()
        except Exception as e:
            storage = messages.get_messages(request)
            storage.used = True
            messages.add_message(request, messages.SUCCESS, "Vui lòng nhập đúng định dạng mmYYYY.")
            return redirect('get_all_income')
    else:
        incomes = []
    return render(request, 'get_all_income.html', {'incomes': incomes})
