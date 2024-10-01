import random
from datetime import date, datetime, timedelta
from pymongo import MongoClient


def get_db_handle():
    client = MongoClient('mongodb://localhost:27017/?authSource=clinic_db')
    db_handle = client['clinic_db']
    return db_handle, client


def generate_random_date(start_date, end_date):
    delta = end_date - start_date
    random_days = random.randint(0, delta.days)
    random_date = end_date - timedelta(days=random_days)

    return random_date


def generate_random_time_in_day(specific_date):
    start_time = datetime.combine(specific_date, datetime.min.time()) + timedelta(hours=7)
    end_time = datetime.combine(specific_date, datetime.min.time()) + timedelta(hours=17)  # Đến 5h chiều
    delta = end_time - start_time
    random_seconds = random.randint(0, int(delta.total_seconds()))
    random_time = start_time + timedelta(seconds=random_seconds)

    return random_time


def init_history(disease_id, patient_id, doctor_id):
    return {
        "disease_id": disease_id,
        "patient_id": patient_id,
        "doctor_id": doctor_id,
        "months": [],
        "visit_ids": [],
        "nurse_ids": [],
    }


def init_tmp():
    return {
        "visit_ids": [],
        "nurse_ids": [],
        "visit_dates": [],
    }


def gen_data():
    db_handle, client = get_db_handle()
    visit_id = 1
    bill_id = 1
    visits = []
    bills = []
    histories = []
    for i in range(1, 200):
        patient_id = "P" + f"{random.randint(1, 100):03}"
        doctor_id = "D" + f"{random.randint(1, 15):03}"
        disease_id = "DIS" + f"{random.randint(1, 100):03}"
        vs_date = []
        start_date = generate_random_date(date(2024, 1, 1), date(2024, 9, 29))
        for j in range(0, random.randint(1, 5)):
            nurse_id = "N" + f"{random.randint(1, 100):03}"
            delta = random.choice(range(1, 51))
            visit_date = generate_random_date(start_date, start_date + timedelta(days=delta))
            vs_date.append({
                "visit_id": visit_id,
                "visit_date": visit_date,
                "nurse_id": nurse_id,
            })
            visit = {
                "visit_id": visit_id,
                "patient_id": patient_id,
                "nurse_id": nurse_id,
                "description": [],
                "diagnose": "",
                "visit_date": datetime.combine(visit_date, datetime.min.time()),
                "bill_ids": []
            }
            visit_id += 1
            bill = {
                "bill_id": bill_id,
                "services": [],
            }
            visit["bill_ids"].append(bill_id)
            bill_id += 1
            total = 0
            for k in range(0, random.randint(3, 5)):
                time = generate_random_time_in_day(visit_date)
                service = db_handle['Services'].find({"service_id": random.randint(1, 200)})[0]
                visit["description"].append({
                    "content": service['name'],
                    "description": service['description'],
                    "time": time,
                })
                money = service['price']
                bill["services"].append({
                    "service_id": service['service_id'],
                    "quantity": 1,
                    "money": money
                })
                total += money
            bill["total"] = total
            bills.append(bill)
            total = 0
            bill = {
                "bill_id": bill_id,
                "medicines": [],
            }
            visit["bill_ids"].append(bill_id)
            bill_id += 1
            for k in range(1, 2):
                time = generate_random_time_in_day(visit_date)
                medicines = db_handle['Medicines'].find({"medicine_id": "MED" + f"{random.randint(1, 300):03}"})
                for medicine in medicines:
                    visit["description"].append({
                        "content": medicine["name"],
                        "description": medicine["description"],
                        "time": time,
                    })
                    quantity = random.randint(1, 3)
                    money = medicine["price"] * quantity
                    bill["medicines"].append({
                        "service_id": medicine["medicine_id"],
                        "quantity": quantity,
                        "money": money
                    })
                    total += money
            bill["total"] = total
            bills.append(bill)
            visits.append(visit)
        vs_date.sort(key=lambda x: x['visit_date'])
        start_date = date(2020, 1, 1)
        tmp = init_tmp()
        for element in vs_date:
            delta = element["visit_date"] - start_date
            if delta.days > 30:
                if len(tmp["visit_ids"]) > 0:
                    history = init_history(disease_id, patient_id, doctor_id)
                    history["visit_ids"] = tmp["visit_ids"]
                    history["nurse_ids"] = tmp["nurse_ids"]
                    history["months"] = sorted(set(tmp["visit_dates"]))
                    histories.append(history)
                    tmp = init_tmp()
            tmp["visit_ids"].append(element["visit_id"])
            tmp["nurse_ids"].append(element["nurse_id"])
            tmp["visit_dates"].append(datetime.combine(element["visit_date"], datetime.min.time()))
            start_date = element["visit_date"]
        if len(tmp["visit_ids"]) > 0:
            history = init_history(disease_id, patient_id, doctor_id)
            history["visit_ids"] = tmp["visit_ids"]
            history["nurse_ids"] = tmp["nurse_ids"]
            history["months"] = sorted(set(d.strftime("%m%Y") for d in tmp["visit_dates"]))
            histories.append(history)

    db_handle["Bills"].insert_many(bills)
    db_handle["Visits"].insert_many(visits)
    db_handle["MedicalHistory"].insert_many(histories)


if __name__ == "__main__":
    gen_data()
