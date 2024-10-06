use clinic_db;

db.createCollection("Users");
db.createCollection("Doctors");
db.createCollection("Patients");
db.createCollection("Nurses");
db.createCollection("Visits");
db.createCollection("MedicalHistory");
db.createCollection("Diseases");
db.createCollection("Medicines");
db.createCollection("Services");
db.createCollection("Bill");
db.createCollection("incomes");

db.Users.insertMany([
    // role ----- 1: Doctor, 2: Nurse, 3: Admin
    {
        "user_name": "doctor1",
        "password": "password",
        "role": 1
    },
    {
        "user_name": "doctor2",
        "password": "password",
        "role": 1
    },
    {
        "user_name": "doctor3",
        "password": "password",
        "role": 1
    },
    {
        "user_name": "doctor4",
        "password": "password",
        "role": 1
    },
    {
        "user_name": "doctor5",
        "password": "password",
        "role": 1
    },
    {
        "user_name": "doctor6",
        "password": "password",
        "role": 1
    },
    {
        "user_name": "doctor7",
        "password": "password",
        "role": 1
    },
    {
        "user_name": "doctor8",
        "password": "password",
        "role": 1
    },
    {
        "user_name": "doctor9",
        "password": "password",
        "role": 1
    },
    {
        "user_name": "doctor10",
        "password": "password",
        "role": 1
    },
    {
        "user_name": "doctor11",
        "password": "password",
        "role": 1
    },
    {
        "user_name": "doctor12",
        "password": "password",
        "role": 1
    },
    {
        "user_name": "doctor13",
        "password": "password",
        "role": 1
    },
    {
        "user_name": "doctor14",
        "password": "password",
        "role": 1
    },
    {
        "user_name": "doctor15",
        "password": "password",
        "role": 1
    },
    {
        "user_name": "nurse1",
        "password": "password",
        "role": 2
    },
    {
        "user_name": "nurse2",
        "password": "password",
        "role": 2
    },
    {
        "user_name": "nurse3",
        "password": "password",
        "role": 2
    },
    {
        "user_name": "nurse4",
        "password": "password",
        "role": 2
    },
    {
        "user_name": "nurse5",
        "password": "password",
        "role": 2
    },
    {
        "user_name": "nurse6",
        "password": "password",
        "role": 2
    },
    {
        "user_name": "nurse7",
        "password": "password",
        "role": 2
    },
    {
        "user_name": "nurse8",
        "password": "password",
        "role": 2
    },
    {
        "user_name": "nurse9",
        "password": "password",
        "role": 2
    },
    {
        "user_name": "nurse10",
        "password": "password",
        "role": 2
    },
    {
        "user_name": "nurse12",
        "password": "password",
        "role": 2
    },
    {
        "user_name": "nurse12",
        "password": "password",
        "role": 2
    },
    {
        "user_name": "nurse13",
        "password": "password",
        "role": 2
    },
    {
        "user_name": "nurse14",
        "password": "password",
        "role": 2
    },
    {
        "user_name": "nurse15",
        "password": "password",
        "role": 2
    },
    {
        "user_name": "admin",
        "password": "admin",
        "role": 3
    }
]);

db.Doctors.insertMany([
  {
    "doctor_id": "D001",
    "user_name": "doctor1",
    "CID": "123456789",
    "name": "Dr. Nguyen Van A",
    "date_of_birth": ISODate("1980-05-10"),
    "address": "123 Main St",
    "phone_number": "0901234567",
    "qualification": "Chuyên khoa I",
    "specialization": ["Tim mạch", "Nội khoa"]
  },
  {
    "doctor_id": "D002",
    "user_name": "doctor2",
    "CID": "987654321",
    "name": "Dr. Tran Thi B",
    "date_of_birth": ISODate("1985-11-23"),
    "address": "456 Second St",
    "phone_number": "0907654321",
    "qualification": "Chuyên khoa II",
    "specialization": ["Nhi khoa", "Phẫu thuật"]
  },
  {
    "doctor_id": "D003",
    "user_name": "doctor3",
    "CID": "321654987",
    "name": "Dr. Le Van C",
    "date_of_birth": ISODate("1978-08-19"),
    "address": "789 Third St",
    "phone_number": "0903245678",
    "qualification": "Chuyên khoa I",
    "specialization": ["Da liễu", "Thẩm mỹ"]
  },
  {
    "doctor_id": "D004",
    "user_name": "doctor4",
    "CID": "654789321",
    "name": "Dr. Pham Thi D",
    "date_of_birth": ISODate("1990-02-14"),
    "address": "123 Fourth St",
    "phone_number": "0909876543",
    "qualification": "Chuyên khoa III",
    "specialization": ["Tim mạch", "Hô hấp"]
  },
  {
    "doctor_id": "D005",
    "user_name": "doctor5",
    "CID": "987654123",
    "name": "Dr. Nguyen Van E",
    "date_of_birth": ISODate("1983-07-22"),
    "address": "456 Fifth St",
    "phone_number": "0904567890",
    "qualification": "Chuyên khoa II",
    "specialization": ["Mắt", "Thần kinh"]
  },
  {
    "doctor_id": "D006",
    "user_name": "doctor6",
    "CID": "321987654",
    "name": "Dr. Hoang Van F",
    "date_of_birth": ISODate("1982-04-05"),
    "address": "789 Sixth St",
    "phone_number": "0901234987",
    "qualification": "Chuyên khoa I",
    "specialization": ["Nội khoa", "Sản khoa"]
  },
  {
    "doctor_id": "D007",
    "user_name": "doctor7",
    "CID": "654123987",
    "name": "Dr. Do Van G",
    "date_of_birth": ISODate("1987-12-25"),
    "address": "123 Seventh St",
    "phone_number": "0907654321",
    "qualification": "Chuyên khoa II",
    "specialization": ["Da liễu", "Tim mạch"]
  },
  {
    "doctor_id": "D008",
    "user_name": "doctor8",
    "CID": "789456123",
    "name": "Dr. Tran Thi H",
    "date_of_birth": ISODate("1991-11-30"),
    "address": "456 Eighth St",
    "phone_number": "0901235678",
    "qualification": "Chuyên khoa I",
    "specialization": ["Mắt", "Da liễu"]
  },
  {
    "doctor_id": "D009",
    "user_name": "doctor9",
    "CID": "654789987",
    "name": "Dr. Phan Van I",
    "date_of_birth": ISODate("1986-03-03"),
    "address": "789 Ninth St",
    "phone_number": "0903245897",
    "qualification": "Chuyên khoa III",
    "specialization": ["Phẫu thuật", "Hô hấp"]
  },
  {
    "doctor_id": "D010",
    "user_name": "doctor10",
    "CID": "321654321",
    "name": "Dr. Nguyen Thi J",
    "date_of_birth": ISODate("1993-06-16"),
    "address": "123 Tenth St",
    "phone_number": "0905678901",
    "qualification": "Chuyên khoa I",
    "specialization": ["Tim mạch", "Mắt"]
  },
  {
    "doctor_id": "D011",
    "user_name": "doctor11",
    "CID": "987321654",
    "name": "Dr. Le Van K",
    "date_of_birth": ISODate("1989-09-09"),
    "address": "456 Eleventh St",
    "phone_number": "0909871234",
    "qualification": "Chuyên khoa II",
    "specialization": ["Nhi khoa", "Da liễu"]
  },
  {
    "doctor_id": "D012",
    "user_name": "doctor12",
    "CID": "654321987",
    "name": "Dr. Pham Thi L",
    "date_of_birth": ISODate("1981-01-01"),
    "address": "789 Twelfth St",
    "phone_number": "0904561234",
    "qualification": "Chuyên khoa I",
    "specialization": ["Tim mạch", "Hô hấp"]
  },
  {
    "doctor_id": "D013",
    "user_name": "doctor13",
    "CID": "321987321",
    "name": "Dr. Tran Van M",
    "date_of_birth": ISODate("1984-08-08"),
    "address": "123 Thirteenth St",
    "phone_number": "0901237894",
    "qualification": "Chuyên khoa III",
    "specialization": ["Thẩm mỹ", "Tim mạch"]
  },
  {
    "doctor_id": "D014",
    "user_name": "doctor14",
    "CID": "987654987",
    "name": "Dr. Nguyen Thi N",
    "date_of_birth": ISODate("1988-10-10"),
    "address": "456 Fourteenth St",
    "phone_number": "0907651234",
    "qualification": "Chuyên khoa I",
    "specialization": ["Mắt", "Phẫu thuật"]
  },
  {
    "doctor_id": "D015",
    "user_name": "doctor15",
    "CID": "654123654",
    "name": "Dr. Hoang Van O",
    "date_of_birth": ISODate("1992-05-05"),
    "address": "789 Fifteenth St",
    "phone_number": "0903216547",
    "qualification": "Chuyên khoa II",
    "specialization": ["Nhi khoa", "Tim mạch"]
  }
]);

db.Nurses.insertMany([
  {
    "nurse_id": "N001",
    "CID": "123456001",
    "name": "Nurse 1",
    "date_of_birth": ISODate("1985-01-01"),
    "address": "123 Address 1",
    "phone_number": "0123456781",
    "qualification": " Cao đẳng y tế",
    "user_name": "nurse1"
  },
  {
    "nurse_id": "N002",
    "CID": "123456002",
    "name": "Nurse 2",
    "date_of_birth": ISODate("1986-02-02"),
    "address": "123 Address 2",
    "phone_number": "0123456782",
    "qualification": " Trung cấp điều dưỡng",
    "user_name": "nurse2"
  },
  {
    "nurse_id": "N003",
    "CID": "123456003",
    "name": "Nurse 3",
    "date_of_birth": ISODate("1987-03-03"),
    "address": "123 Address 3",
    "phone_number": "0123456783",
    "qualification": " Cao đẳng y tế",
    "user_name": "nurse3"
  },
  {
    "nurse_id": "N004",
    "CID": "123456004",
    "name": "Nurse 4",
    "date_of_birth": ISODate("1988-04-04"),
    "address": "123 Address 4",
    "phone_number": "0123456784",
    "qualification": " Trung cấp điều dưỡng",
    "user_name": "nurse4"
  },
  {
    "nurse_id": "N005",
    "CID": "123456005",
    "name": "Nurse 5",
    "date_of_birth": ISODate("1989-05-05"),
    "address": "123 Address 5",
    "phone_number": "0123456785",
    "qualification": " Trung cấp điều dưỡng",
    "user_name": "nurse5"
  },
  {
    "nurse_id": "N006",
    "CID": "123456006",
    "name": "Nurse 6",
    "date_of_birth": ISODate("1990-06-06"),
    "address": "123 Address 6",
    "phone_number": "0123456786",
    "qualification": " Cao đẳng y tế",
    "user_name": "nurse6"
  },
  {
    "nurse_id": "N007",
    "CID": "123456007",
    "name": "Nurse 7",
    "date_of_birth": ISODate("1991-07-07"),
    "address": "123 Address 7",
    "phone_number": "0123456787",
    "qualification": " Trung cấp điều dưỡng",
    "user_name": "nurse7"
  },
  {
    "nurse_id": "N008",
    "CID": "123456008",
    "name": "Nurse 8",
    "date_of_birth": ISODate("1992-08-08"),
    "address": "123 Address 8",
    "phone_number": "0123456788",
    "qualification": " Trung cấp điều dưỡng",
    "user_name": "nurse8"
  },
  {
    "nurse_id": "N009",
    "CID": "123456009",
    "name": "Nurse 9",
    "date_of_birth": ISODate("1993-09-09"),
    "address": "123 Address 9",
    "phone_number": "0123456789",
    "qualification": " Cao đẳng y tế",
    "user_name": "nurse9"
  },
  {
    "nurse_id": "N010",
    "CID": "123456010",
    "name": "Nurse 10",
    "date_of_birth": ISODate("1994-10-10"),
    "address": "123 Address 10",
    "phone_number": "0123456790",
    "qualification": " Trung cấp điều dưỡng",
    "user_name": "nurse10"
  },
  {
    "nurse_id": "N011",
    "CID": "123456011",
    "name": "Nurse 11",
    "date_of_birth": ISODate("1995-11-11"),
    "address": "123 Address 11",
    "phone_number": "0123456791",
    "qualification": " Cao đẳng y tế",
    "user_name": "nurse11"
  },
  {
    "nurse_id": "N012",
    "CID": "123456012",
    "name": "Nurse 12",
    "date_of_birth": ISODate("1996-12-12"),
    "address": "123 Address 12",
    "phone_number": "0123456792",
    "qualification": " Trung cấp điều dưỡng",
    "user_name": "nurse12"
  },
  {
    "nurse_id": "N013",
    "CID": "123456013",
    "name": "Nurse 13",
    "date_of_birth": ISODate("1997-01-13"),
    "address": "123 Address 13",
    "phone_number": "0123456793",
    "qualification": " Trung cấp điều dưỡng",
    "user_name": "nurse13"
  },
  {
    "nurse_id": "N014",
    "CID": "123456014",
    "name": "Nurse 14",
    "date_of_birth": ISODate("1998-02-14"),
    "address": "123 Address 14",
    "phone_number": "0123456794",
    "qualification": " Cao đẳng y tế",
    "user_name": "nurse14"
  },
  {
    "nurse_id": "N015",
    "CID": "123456015",
    "name": "Nurse 15",
    "date_of_birth": ISODate("1999-03-15"),
    "address": "123 Address 15",
    "phone_number": "0123456795",
    "qualification": " Trung cấp điều dưỡng",
    "user_name": "nurse15"
  }
]);

db.Patients.insertMany([
    {
        "patient_id": "P001",
        "CID": "123456001",
        "name": "Bệnh nhân 1",
        "date_of_birth": ISODate("1990-01-01"),
        "address": "Địa chỉ 1",
        "phone_number": "01234567801"
    },
    {
        "patient_id": "P002",
        "CID": "123456002",
        "name": "Bệnh nhân 2",
        "date_of_birth": ISODate("1991-02-02"),
        "address": "Địa chỉ 2",
        "phone_number": "01234567802"
    },
    {
        "patient_id": "P003",
        "CID": "123456003",
        "name": "Bệnh nhân 3",
        "date_of_birth": ISODate("1992-03-03"),
        "address": "Địa chỉ 3",
        "phone_number": "01234567803"
    },
    {
        "patient_id": "P004",
        "CID": "123456004",
        "name": "Bệnh nhân 4",
        "date_of_birth": ISODate("1993-04-04"),
        "address": "Địa chỉ 4",
        "phone_number": "01234567804"
    },
    {
        "patient_id": "P005",
        "CID": "123456005",
        "name": "Bệnh nhân 5",
        "date_of_birth": ISODate("1994-05-05"),
        "address": "Địa chỉ 5",
        "phone_number": "01234567805"
    },
    {
        "patient_id": "P006",
        "CID": "123456006",
        "name": "Bệnh nhân 6",
        "date_of_birth": ISODate("1995-06-06"),
        "address": "Địa chỉ 6",
        "phone_number": "01234567806"
    },
    {
        "patient_id": "P007",
        "CID": "123456007",
        "name": "Bệnh nhân 7",
        "date_of_birth": ISODate("1996-07-07"),
        "address": "Địa chỉ 7",
        "phone_number": "01234567807"
    },
    {
        "patient_id": "P008",
        "CID": "123456008",
        "name": "Bệnh nhân 8",
        "date_of_birth": ISODate("1997-08-08"),
        "address": "Địa chỉ 8",
        "phone_number": "01234567808"
    },
    {
        "patient_id": "P009",
        "CID": "123456009",
        "name": "Bệnh nhân 9",
        "date_of_birth": ISODate("1998-09-09"),
        "address": "Địa chỉ 9",
        "phone_number": "01234567809"
    },
    {
        "patient_id": "P010",
        "CID": "123456010",
        "name": "Bệnh nhân 10",
        "date_of_birth": ISODate("1999-10-10"),
        "address": "Địa chỉ 10",
        "phone_number": "01234567810"
    },
    {
        "patient_id": "P011",
        "CID": "123456011",
        "name": "Bệnh nhân 11",
        "date_of_birth": ISODate("2000-11-11"),
        "address": "Địa chỉ 11",
        "phone_number": "01234567811"
    },
    {
        "patient_id": "P012",
        "CID": "123456012",
        "name": "Bệnh nhân 12",
        "date_of_birth": ISODate("2001-12-12"),
        "address": "Địa chỉ 12",
        "phone_number": "01234567812"
    },
    {
        "patient_id": "P013",
        "CID": "123456013",
        "name": "Bệnh nhân 13",
        "date_of_birth": ISODate("2002-01-13"),
        "address": "Địa chỉ 13",
        "phone_number": "01234567813"
    },
    {
        "patient_id": "P014",
        "CID": "123456014",
        "name": "Bệnh nhân 14",
        "date_of_birth": ISODate("2003-02-14"),
        "address": "Địa chỉ 14",
        "phone_number": "01234567814"
    },
    {
        "patient_id": "P015",
        "CID": "123456015",
        "name": "Bệnh nhân 15",
        "date_of_birth": ISODate("2004-03-15"),
        "address": "Địa chỉ 15",
        "phone_number": "01234567815"
    },
    {
        "patient_id": "P016",
        "CID": "123456016",
        "name": "Bệnh nhân 16",
        "date_of_birth": ISODate("2005-04-16"),
        "address": "Địa chỉ 16",
        "phone_number": "01234567816"
    },
    {
        "patient_id": "P017",
        "CID": "123456017",
        "name": "Bệnh nhân 17",
        "date_of_birth": ISODate("2006-05-17"),
        "address": "Địa chỉ 17",
        "phone_number": "01234567817"
    },
    {
        "patient_id": "P018",
        "CID": "123456018",
        "name": "Bệnh nhân 18",
        "date_of_birth": ISODate("2007-06-18"),
        "address": "Địa chỉ 18",
        "phone_number": "01234567818"
    },
    {
        "patient_id": "P019",
        "CID": "123456019",
        "name": "Bệnh nhân 19",
        "date_of_birth": ISODate("2008-07-19"),
        "address": "Địa chỉ 19",
        "phone_number": "01234567819"
    },
    {
        "patient_id": "P020",
        "CID": "123456020",
        "name": "Bệnh nhân 20",
        "date_of_birth": ISODate("2009-08-20"),
        "address": "Địa chỉ 20",
        "phone_number": "01234567820"
    },
    {
        "patient_id": "P021",
        "CID": "123456021",
        "name": "Bệnh nhân 21",
        "date_of_birth": ISODate("2010-09-21"),
        "address": "Địa chỉ 21",
        "phone_number": "01234567821"
    },
    {
        "patient_id": "P022",
        "CID": "123456022",
        "name": "Bệnh nhân 22",
        "date_of_birth": ISODate("2011-10-22"),
        "address": "Địa chỉ 22",
        "phone_number": "01234567822"
    },
    {
        "patient_id": "P023",
        "CID": "123456023",
        "name": "Bệnh nhân 23",
        "date_of_birth": ISODate("2012-11-23"),
        "address": "Địa chỉ 23",
        "phone_number": "01234567823"
    },
    {
        "patient_id": "P024",
        "CID": "123456024",
        "name": "Bệnh nhân 24",
        "date_of_birth": ISODate("2013-12-24"),
        "address": "Địa chỉ 24",
        "phone_number": "01234567824"
    },
    {
        "patient_id": "P025",
        "CID": "123456025",
        "name": "Bệnh nhân 25",
        "date_of_birth": ISODate("2014-01-25"),
        "address": "Địa chỉ 25",
        "phone_number": "01234567825"
    },
    {
        "patient_id": "P026",
        "CID": "123456026",
        "name": "Bệnh nhân 26",
        "date_of_birth": ISODate("2015-02-26"),
        "address": "Địa chỉ 26",
        "phone_number": "01234567826"
    },
    {
        "patient_id": "P027",
        "CID": "123456027",
        "name": "Bệnh nhân 27",
        "date_of_birth": ISODate("2016-03-27"),
        "address": "Địa chỉ 27",
        "phone_number": "01234567827"
    },
    {
        "patient_id": "P028",
        "CID": "123456028",
        "name": "Bệnh nhân 28",
        "date_of_birth": ISODate("2017-04-28"),
        "address": "Địa chỉ 28",
        "phone_number": "01234567828"
    },
    {
        "patient_id": "P029",
        "CID": "123456029",
        "name": "Bệnh nhân 29",
        "date_of_birth": ISODate("2018-05-29"),
        "address": "Địa chỉ 29",
        "phone_number": "01234567829"
    },
    {
        "patient_id": "P030",
        "CID": "123456030",
        "name": "Bệnh nhân 30",
        "date_of_birth": ISODate("2019-06-30"),
        "address": "Địa chỉ 30",
        "phone_number": "01234567830"
    },
    {
        "patient_id": "P031",
        "CID": "123456031",
        "name": "Bệnh nhân 31",
        "date_of_birth": ISODate("2020-07-31"),
        "address": "Địa chỉ 31",
        "phone_number": "01234567831"
    },

    {
        "patient_id": "P032",
        "CID": "123456032",
        "name": "Bệnh nhân 32",
        "date_of_birth": ISODate("2021-08-01"),
        "address": "Địa chỉ 32",
        "phone_number": "01234567832"
    },
    {
        "patient_id": "P033",
        "CID": "123456033",
        "name": "Bệnh nhân 33",
        "date_of_birth": ISODate("2022-09-02"),
        "address": "Địa chỉ 33",
        "phone_number": "01234567833"
    },
    {
        "patient_id": "P034",
        "CID": "123456034",
        "name": "Bệnh nhân 34",
        "date_of_birth": ISODate("2023-10-03"),
        "address": "Địa chỉ 34",
        "phone_number": "01234567834"
    },
    {
        "patient_id": "P035",
        "CID": "123456035",
        "name": "Bệnh nhân 35",
        "date_of_birth": ISODate("1990-01-01"),
        "address": "Địa chỉ 35",
        "phone_number": "01234567835"
    },
    {
        "patient_id": "P036",
        "CID": "123456036",
        "name": "Bệnh nhân 36",
        "date_of_birth": ISODate("1991-02-02"),
        "address": "Địa chỉ 36",
        "phone_number": "01234567836"
    },
    {
        "patient_id": "P037",
        "CID": "123456037",
        "name": "Bệnh nhân 37",
        "date_of_birth": ISODate("1992-03-03"),
        "address": "Địa chỉ 37",
        "phone_number": "01234567837"
    },
    {
        "patient_id": "P038",
        "CID": "123456038",
        "name": "Bệnh nhân 38",
        "date_of_birth": ISODate("1993-04-04"),
        "address": "Địa chỉ 38",
        "phone_number": "01234567838"
    },
    {
        "patient_id": "P039",
        "CID": "123456039",
        "name": "Bệnh nhân 39",
        "date_of_birth": ISODate("1994-05-05"),
        "address": "Địa chỉ 39",
        "phone_number": "01234567839"
    },
    {
        "patient_id": "P040",
        "CID": "123456040",
        "name": "Bệnh nhân 40",
        "date_of_birth": ISODate("1995-06-06"),
        "address": "Địa chỉ 40",
        "phone_number": "01234567840"
    },
    {
        "patient_id": "P041",
        "CID": "123456041",
        "name": "Bệnh nhân 41",
        "date_of_birth": ISODate("1996-07-07"),
        "address": "Địa chỉ 41",
        "phone_number": "01234567841"
    },
    {
        "patient_id": "P042",
        "CID": "123456042",
        "name": "Bệnh nhân 42",
        "date_of_birth": ISODate("1997-08-08"),
        "address": "Địa chỉ 42",
        "phone_number": "01234567842"
    },
    {
        "patient_id": "P043",
        "CID": "123456043",
        "name": "Bệnh nhân 43",
        "date_of_birth": ISODate("1998-09-09"),
        "address": "Địa chỉ 43",
        "phone_number": "01234567843"
    },
    {
        "patient_id": "P044",
        "CID": "123456044",
        "name": "Bệnh nhân 44",
        "date_of_birth": ISODate("1999-10-10"),
        "address": "Địa chỉ 44",
        "phone_number": "01234567844"
    },
    {
        "patient_id": "P045",
        "CID": "123456045",
        "name": "Bệnh nhân 45",
        "date_of_birth": ISODate("2000-11-11"),
        "address": "Địa chỉ 45",
        "phone_number": "01234567845"
    },
    {
        "patient_id": "P046",
        "CID": "123456046",
        "name": "Bệnh nhân 46",
        "date_of_birth": ISODate("2001-12-12"),
        "address": "Địa chỉ 46",
        "phone_number": "01234567846"
    },
    {
        "patient_id": "P047",
        "CID": "123456047",
        "name": "Bệnh nhân 47",
        "date_of_birth": ISODate("2002-01-13"),
        "address": "Địa chỉ 47",
        "phone_number": "01234567847"
    },
    {
        "patient_id": "P048",
        "CID": "123456048",
        "name": "Bệnh nhân 48",
        "date_of_birth": ISODate("2003-02-14"),
        "address": "Địa chỉ 48",
        "phone_number": "01234567848"
    },
    {
        "patient_id": "P049",
        "CID": "123456049",
        "name": "Bệnh nhân 49",
        "date_of_birth": ISODate("2004-03-15"),
        "address": "Địa chỉ 49",
        "phone_number": "01234567849"
    },
    {
        "patient_id": "P050",
        "CID": "123456050",
        "name": "Bệnh nhân 50",
        "date_of_birth": ISODate("2005-04-16"),
        "address": "Địa chỉ 50",
        "phone_number": "01234567850"
    },
    {
        "patient_id": "P051",
        "CID": "123456051",
        "name": "Bệnh nhân 51",
        "date_of_birth": ISODate("2006-05-17"),
        "address": "Địa chỉ 51",
        "phone_number": "01234567851"
    },
    {
        "patient_id": "P052",
        "CID": "123456052",
        "name": "Bệnh nhân 52",
        "date_of_birth": ISODate("2007-06-18"),
        "address": "Địa chỉ 52",
        "phone_number": "01234567852"
    },
    {
        "patient_id": "P053",
        "CID": "123456053",
        "name": "Bệnh nhân 53",
        "date_of_birth": ISODate("2008-07-19"),
        "address": "Địa chỉ 53",
        "phone_number": "01234567853"
    },
    {
        "patient_id": "P054",
        "CID": "123456054",
        "name": "Bệnh nhân 54",
        "date_of_birth": ISODate("2009-08-20"),
        "address": "Địa chỉ 54",
        "phone_number": "01234567854"
    },
    {
        "patient_id": "P055",
        "CID": "123456055",
        "name": "Bệnh nhân 55",
        "date_of_birth": ISODate("2010-09-21"),
        "address": "Địa chỉ 55",
        "phone_number": "01234567855"
    },
    {
        "patient_id": "P056",
        "CID": "123456056",
        "name": "Bệnh nhân 56",
        "date_of_birth": ISODate("2011-10-22"),
        "address": "Địa chỉ 56",
        "phone_number": "01234567856"
    },
    {
        "patient_id": "P057",
        "CID": "123456057",
        "name": "Bệnh nhân 57",
        "date_of_birth": ISODate("2012-11-23"),
        "address": "Địa chỉ 57",
        "phone_number": "01234567857"
    },
    {
        "patient_id": "P058",
        "CID": "123456058",
        "name": "Bệnh nhân 58",
        "date_of_birth": ISODate("2013-12-24"),
        "address": "Địa chỉ 58",
        "phone_number": "01234567858"
    },
    {
        "patient_id": "P059",
        "CID": "123456059",
        "name": "Bệnh nhân 59",
        "date_of_birth": ISODate("2014-01-25"),
        "address": "Địa chỉ 59",
        "phone_number": "01234567859"
    },
    {
        "patient_id": "P060",
        "CID": "123456060",
        "name": "Bệnh nhân 60",
        "date_of_birth": ISODate("2015-02-26"),
        "address": "Địa chỉ 60",
        "phone_number": "01234567860"
    },
    {
        "patient_id": "P061",
        "CID": "123456061",
        "name": "Bệnh nhân 61",
        "date_of_birth": ISODate("2016-03-27"),
        "address": "Địa chỉ 61",
        "phone_number": "01234567861"
    },
    {
        "patient_id": "P062",
        "CID": "123456062",
        "name": "Bệnh nhân 62",
        "date_of_birth": ISODate("2017-04-28"),
        "address": "Địa chỉ 62",
        "phone_number": "01234567862"
    },
    {
        "patient_id": "P063",
        "CID": "123456063",
        "name": "Bệnh nhân 63",
        "date_of_birth": ISODate("2018-05-29"),
        "address": "Địa chỉ 63",
        "phone_number": "01234567863"
    },
    {
        "patient_id": "P064",
        "CID": "123456064",
        "name": "Bệnh nhân 64",
        "date_of_birth": ISODate("2019-06-30"),
        "address": "Địa chỉ 64",
        "phone_number": "01234567864"
    },
    {
        "patient_id": "P065",
        "CID": "123456065",
        "name": "Bệnh nhân 65",
        "date_of_birth": ISODate("2020-07-31"),
        "address": "Địa chỉ 65",
        "phone_number": "01234567865"
    },
    {
        "patient_id": "P066",
        "CID": "123456066",
        "name": "Bệnh nhân 66",
        "date_of_birth": ISODate("2021-08-01"),
        "address": "Địa chỉ 66",
        "phone_number": "01234567866"
    },
    {
        "patient_id": "P067",
        "CID": "123456067",
        "name": "Bệnh nhân 67",
        "date_of_birth": ISODate("2022-09-02"),
        "address": "Địa chỉ 67",
        "phone_number": "01234567867"
    },
    {
        "patient_id": "P068",
        "CID": "123456068",
        "name": "Bệnh nhân 68",
        "date_of_birth": ISODate("2023-10-03"),
        "address": "Địa chỉ 68",
        "phone_number": "01234567868"
    },
    {
        "patient_id": "P069",
        "CID": "123456069",
        "name": "Bệnh nhân 69",
        "date_of_birth": ISODate("1990-01-01"),
        "address": "Địa chỉ 69",
        "phone_number": "01234567869"
    },
    {
        "patient_id": "P070",
        "CID": "123456070",
        "name": "Bệnh nhân 70",
        "date_of_birth": ISODate("1991-02-02"),
        "address": "Địa chỉ 70",
        "phone_number": "01234567870"
    },
    {
        "patient_id": "P071",
        "CID": "123456071",
        "name": "Bệnh nhân 71",
        "date_of_birth": ISODate("1992-03-03"),
        "address": "Địa chỉ 71",
        "phone_number": "01234567871"
    },
    {
        "patient_id": "P072",
        "CID": "123456072",
        "name": "Bệnh nhân 72",
        "date_of_birth": ISODate("1993-04-04"),
        "address": "Địa chỉ 72",
        "phone_number": "01234567872"
    },
    {
        "patient_id": "P073",
        "CID": "123456073",
        "name": "Bệnh nhân 73",
        "date_of_birth": ISODate("1994-05-05"),
        "address": "Địa chỉ 73",
        "phone_number": "01234567873"
    },
    {
        "patient_id": "P074",
        "CID": "123456074",
        "name": "Bệnh nhân 74",
        "date_of_birth": ISODate("1995-06-06"),
        "address": "Địa chỉ 74",
        "phone_number": "01234567874"
    },
    {
        "patient_id": "P075",
        "CID": "123456075",
        "name": "Bệnh nhân 75",
        "date_of_birth": ISODate("1996-07-07"),
        "address": "Địa chỉ 75",
        "phone_number": "01234567875"
    },
    {
        "patient_id": "P076",
        "CID": "123456076",
        "name": "Bệnh nhân 76",
        "date_of_birth": ISODate("1997-08-08"),
        "address": "Địa chỉ 76",
        "phone_number": "01234567876"
    },
    {
        "patient_id": "P077",
        "CID": "123456077",
        "name": "Bệnh nhân 77",
        "date_of_birth": ISODate("1998-09-09"),
        "address": "Địa chỉ 77",
        "phone_number": "01234567877"
    },
    {
        "patient_id": "P078",
        "CID": "123456078",
        "name": "Bệnh nhân 78",
        "date_of_birth": ISODate("1999-10-10"),
        "address": "Địa chỉ 78",
        "phone_number": "01234567878"
    },
    {
        "patient_id": "P079",
        "CID": "123456079",
        "name": "Bệnh nhân 79",
        "date_of_birth": ISODate("2000-11-11"),
        "address": "Địa chỉ 79",
        "phone_number": "01234567879"
    },
    {
        "patient_id": "P080",
        "CID": "123456080",
        "name": "Bệnh nhân 80",
        "date_of_birth": ISODate("2001-12-12"),
        "address": "Địa chỉ 80",
        "phone_number": "01234567880"
    },
    {
        "patient_id": "P081",
        "CID": "123456081",
        "name": "Bệnh nhân 81",
        "date_of_birth": ISODate("2002-01-13"),
        "address": "Địa chỉ 81",
        "phone_number": "01234567881"
    },
    {
        "patient_id": "P082",
        "CID": "123456082",
        "name": "Bệnh nhân 82",
        "date_of_birth": ISODate("2003-02-14"),
        "address": "Địa chỉ 82",
        "phone_number": "01234567882"
    },
    {
        "patient_id": "P083",
        "CID": "123456083",
        "name": "Bệnh nhân 83",
        "date_of_birth": ISODate("2004-03-15"),
        "address": "Địa chỉ 83",
        "phone_number": "01234567883"
    },
    {
        "patient_id": "P084",
        "CID": "123456084",
        "name": "Bệnh nhân 84",
        "date_of_birth": ISODate("2005-04-16"),
        "address": "Địa chỉ 84",
        "phone_number": "01234567884"
    },
    {
        "patient_id": "P085",
        "CID": "123456085",
        "name": "Bệnh nhân 85",
        "date_of_birth": ISODate("2006-05-17"),
        "address": "Địa chỉ 85",
        "phone_number": "01234567885"
    },
    {
        "patient_id": "P086",
        "CID": "123456086",
        "name": "Bệnh nhân 86",
        "date_of_birth": ISODate("2007-06-18"),
        "address": "Địa chỉ 86",
        "phone_number": "01234567886"
    },
    {
        "patient_id": "P087",
        "CID": "123456087",
        "name": "Bệnh nhân 87",
        "date_of_birth": ISODate("2008-07-19"),
        "address": "Địa chỉ 87",
        "phone_number": "01234567887"
    },
    {
        "patient_id": "P088",
        "CID": "123456088",
        "name": "Bệnh nhân 88",
        "date_of_birth": ISODate("2009-08-20"),
        "address": "Địa chỉ 88",
        "phone_number": "01234567888"
    },
    {
        "patient_id": "P089",
        "CID": "123456089",
        "name": "Bệnh nhân 89",
        "date_of_birth": ISODate("2010-09-21"),
        "address": "Địa chỉ 89",
        "phone_number": "01234567889"
    },
    {
        "patient_id": "P090",
        "CID": "123456090",
        "name": "Bệnh nhân 90",
        "date_of_birth": ISODate("2011-10-22"),
        "address": "Địa chỉ 90",
        "phone_number": "01234567890"
    },
    {
        "patient_id": "P091",
        "CID": "123456091",
        "name": "Bệnh nhân 91",
        "date_of_birth": ISODate("2012-11-23"),
        "address": "Địa chỉ 91",
        "phone_number": "01234567891"
    },
    {
        "patient_id": "P092",
        "CID": "123456092",
        "name": "Bệnh nhân 92",
        "date_of_birth": ISODate("2013-12-24"),
        "address": "Địa chỉ 92",
        "phone_number": "01234567892"
    },
    {
        "patient_id": "P093",
        "CID": "123456093",
        "name": "Bệnh nhân 93",
        "date_of_birth": ISODate("2014-01-25"),
        "address": "Địa chỉ 93",
        "phone_number": "01234567893"
    },
    {
        "patient_id": "P094",
        "CID": "123456094",
        "name": "Bệnh nhân 94",
        "date_of_birth": ISODate("2015-02-26"),
        "address": "Địa chỉ 94",
        "phone_number": "01234567894"
    },
    {
        "patient_id": "P095",
        "CID": "123456095",
        "name": "Bệnh nhân 95",
        "date_of_birth": ISODate("2016-03-27"),
        "address": "Địa chỉ 95",
        "phone_number": "01234567895"
    },
    {
        "patient_id": "P096",
        "CID": "123456096",
        "name": "Bệnh nhân 96",
        "date_of_birth": ISODate("2017-04-28"),
        "address": "Địa chỉ 96",
        "phone_number": "01234567896"
    },
    {
        "patient_id": "P097",
        "CID": "123456097",
        "name": "Bệnh nhân 97",
        "date_of_birth": ISODate("2018-05-29"),
        "address": "Địa chỉ 97",
        "phone_number": "01234567897"
    },
    {
        "patient_id": "P098",
        "CID": "123456098",
        "name": "Bệnh nhân 98",
        "date_of_birth": ISODate("2019-06-30"),
        "address": "Địa chỉ 98",
        "phone_number": "01234567898"
    },
    {
        "patient_id": "P099",
        "CID": "123456099",
        "name": "Bệnh nhân 99",
        "date_of_birth": ISODate("2020-07-31"),
        "address": "Địa chỉ 99",
        "phone_number": "01234567899"
    },
    {
        "patient_id": "P100",
        "CID": "123456100",
        "name": "Bệnh nhân 100",
        "date_of_birth": ISODate("2021-08-01"),
        "address": "Địa chỉ 100",
        "phone_number": "01234567900"
    }
]);

db.Diseases.insertMany([
    {
        "disease_id": "DIS001",
        "name": "Cảm cúm",
        "description": "Bệnh do virus gây ra, thường có triệu chứng sốt, ho, đau đầu."
    },
    {
        "disease_id": "DIS002",
        "name": "Viêm phổi",
        "description": "Bệnh nhiễm trùng phổi, gây khó thở và ho có đờm."
    },
    {
        "disease_id": "DIS003",
        "name": "Tiểu đường",
        "description": "Bệnh mãn tính ảnh hưởng đến khả năng sản xuất insulin của cơ thể."
    },
    {
        "disease_id": "DIS004",
        "name": "Cao huyết áp",
        "description": "Tình trạng áp lực máu cao hơn mức bình thường."
    },
    {
        "disease_id": "DIS005",
        "name": "Hen suyễn",
        "description": "Bệnh về đường hô hấp, gây khó thở và thở khò khè."
    },
    {
        "disease_id": "DIS006",
        "name": "Đau dạ dày",
        "description": "Bệnh viêm hoặc loét dạ dày, gây đau bụng."
    },
    {
        "disease_id": "DIS007",
        "name": "Viêm gan",
        "description": "Bệnh viêm gan do virus hoặc do rượu."
    },
    {
        "disease_id": "DIS008",
        "name": "Sỏi thận",
        "description": "Tình trạng hình thành sỏi trong thận, gây đau và tiểu khó."
    },
    {
        "disease_id": "DIS009",
        "name": "Bệnh gout",
        "description": "Bệnh do sự tích tụ axit uric trong cơ thể."
    },
    {
        "disease_id": "DIS010",
        "name": "Cúm gia cầm",
        "description": "Bệnh do virus cúm gây ra, thường lây truyền từ động vật sang người."
    },
    {
        "disease_id": "DIS011",
        "name": "Viêm khớp",
        "description": "Bệnh viêm gây đau và sưng khớp."
    },
    {
        "disease_id": "DIS012",
        "name": "Bệnh trĩ",
        "description": "Sự phình to của tĩnh mạch ở vùng hậu môn."
    },
    {
        "disease_id": "DIS013",
        "name": "Bệnh tim mạch",
        "description": "Các vấn đề liên quan đến tim và mạch máu."
    },
    {
        "disease_id": "DIS014",
        "name": "Ung thư",
        "description": "Bệnh do sự phát triển bất thường của tế bào."
    },
    {
        "disease_id": "DIS015",
        "name": "Nhiễm trùng đường tiết niệu",
        "description": "Bệnh nhiễm trùng ở hệ thống tiết niệu."
    },
    {
        "disease_id": "DIS016",
        "name": "Bệnh Alzheimer",
        "description": "Bệnh thoái hóa thần kinh gây suy giảm trí nhớ."
    },
    {
        "disease_id": "DIS017",
        "name": "Bệnh Parkinson",
        "description": "Bệnh thoái hóa thần kinh ảnh hưởng đến chuyển động."
    },
    {
        "disease_id": "DIS018",
        "name": "Bệnh viêm ruột",
        "description": "Bệnh viêm mãn tính ở ruột."
    },
    {
        "disease_id": "DIS019",
        "name": "Tăng cholesterol",
        "description": "Tình trạng mức cholesterol trong máu cao."
    },
    {
        "disease_id": "DIS020",
        "name": "Bệnh tiểu đường loại 2",
        "description": "Bệnh tiểu đường phổ biến, thường gặp ở người lớn."
    },
    {
        "disease_id": "DIS021",
        "name": "Bệnh tật về gan",
        "description": "Các bệnh ảnh hưởng đến chức năng gan."
    },
    {
        "disease_id": "DIS022",
        "name": "Đau đầu migren",
        "description": "Bệnh gây đau đầu dữ dội và có thể kèm theo buồn nôn."
    },
    {
        "disease_id": "DIS023",
        "name": "Rối loạn lo âu",
        "description": "Rối loạn tâm lý gây lo âu quá mức."
    },
    {
        "disease_id": "DIS024",
        "name": "Bệnh celiac",
        "description": "Bệnh gây ra phản ứng miễn dịch với gluten."
    },
    {
        "disease_id": "DIS025",
        "name": "Rối loạn tâm trạng",
        "description": "Rối loạn liên quan đến cảm xúc và tâm trạng."
    },
    {
        "disease_id": "DIS026",
        "name": "Bệnh sốt rét",
        "description": "Bệnh do muỗi truyền gây sốt và mệt mỏi."
    },
    {
        "disease_id": "DIS027",
        "name": "Bệnh viêm màng não",
        "description": "Viêm màng não do virus hoặc vi khuẩn."
    },
    {
        "disease_id": "DIS028",
        "name": "Bệnh động kinh",
        "description": "Bệnh thần kinh gây co giật."
    },
    {
        "disease_id": "DIS029",
        "name": "Bệnh hen phế quản",
        "description": "Bệnh viêm đường hô hấp gây khó thở."
    },
    {
        "disease_id": "DIS030",
        "name": "Viêm da",
        "description": "Bệnh viêm ảnh hưởng đến da."
    },
    {
        "disease_id": "DIS031",
        "name": "Bệnh thiếu máu",
        "description": "Thiếu hụt hồng cầu trong máu."
    },
    {
        "disease_id": "DIS032",
        "name": "Nhiễm khuẩn",
        "description": "Bệnh do vi khuẩn gây ra."
    },
    {
        "disease_id": "DIS033",
        "name": "Bệnh sốt xuất huyết",
        "description": "Bệnh do virus gây ra, thường lây truyền qua muỗi."
    },
    {
        "disease_id": "DIS034",
        "name": "Viêm phổi do vi khuẩn",
        "description": "Viêm phổi do nhiễm khuẩn."
    },
    {
        "disease_id": "DIS035",
        "name": "Bệnh hen suyễn dị ứng",
        "description": "Hen suyễn do dị ứng gây ra."
    },
    {
        "disease_id": "DIS036",
        "name": "Viêm thận",
        "description": "Bệnh viêm ảnh hưởng đến thận."
    },
    {
        "disease_id": "DIS037",
        "name": "Bệnh khớp",
        "description": "Bệnh viêm hoặc thoái hóa khớp."
    },
    {
        "disease_id": "DIS038",
        "name": "Viêm tuyến giáp",
        "description": "Viêm tuyến giáp do tự miễn."
    },
    {
        "disease_id": "DIS039",
        "name": "Bệnh viêm gan siêu vi B",
        "description": "Nhiễm trùng gan do virus siêu vi B."
    },
    {
        "disease_id": "DIS040",
        "name": "Bệnh viêm gan siêu vi C",
        "description": "Nhiễm trùng gan do virus siêu vi C."
    },
    {
        "disease_id": "DIS041",
        "name": "Bệnh trào ngược dạ dày thực quản",
        "description": "Tình trạng acid trong dạ dày trào ngược lên thực quản."
    },
    {
        "disease_id": "DIS042",
        "name": "Bệnh viêm tụy",
        "description": "Viêm tụy do nhiều nguyên nhân khác nhau."
    },
    {
        "disease_id": "DIS043",
        "name": "Bệnh loãng xương",
        "description": "Giảm mật độ xương dẫn đến dễ gãy."
    },
    {
        "disease_id": "DIS044",
        "name": "Bệnh béo phì",
        "description": "Tình trạng thừa cân do chế độ ăn uống không hợp lý."
    },
    {
        "disease_id": "DIS045",
        "name": "Bệnh trầm cảm",
        "description": "Rối loạn tâm trạng nghiêm trọng."
    },
    {
        "disease_id": "DIS046",
        "name": "Bệnh sa sút trí tuệ",
        "description": "Rối loạn tâm thần dẫn đến mất trí nhớ."
       },
    {
        "disease_id": "DIS047",
        "name": "Bệnh viêm mũi dị ứng",
        "description": "Viêm mũi do dị ứng."
    },
    {
        "disease_id": "DIS048",
        "name": "Bệnh viêm mạch",
        "description": "Viêm ảnh hưởng đến mạch máu."
    },
    {
        "disease_id": "DIS049",
        "name": "Bệnh viêm khớp dạng thấp",
        "description": "Bệnh tự miễn gây viêm khớp."
    },
    {
        "disease_id": "DIS050",
        "name": "Bệnh nhiễm trùng huyết",
        "description": "Nhiễm trùng nặng gây ra phản ứng toàn thân."
    },
    { "disease_id": "DIS051", "name": "Bệnh cúm", "description": "Bệnh do virus cúm gây ra, gây sốt, ho, đau cơ." },
    { "disease_id": "DIS052", "name": "Cảm lạnh", "description": "Bệnh nhiễm trùng nhẹ ở đường hô hấp, thường do virus." },
    { "disease_id": "DIS053", "name": "Viêm phổi", "description": "Nhiễm trùng ở phổi, gây khó thở và ho." },
    { "disease_id": "DIS054", "name": "Hen suyễn", "description": "Bệnh mãn tính ảnh hưởng đến đường thở, gây khó thở." },
    { "disease_id": "DIS055", "name": "Viêm gan B", "description": "Nhiễm virus viêm gan B, có thể dẫn đến bệnh gan mãn tính." },
    { "disease_id": "DIS056", "name": "Đau dạ dày", "description": "Cảm giác đau hoặc khó chịu ở vùng dạ dày." },
    { "disease_id": "DIS057", "name": "Tiểu đường", "description": "Bệnh chuyển hóa gây ra lượng đường trong máu cao." },
    { "disease_id": "DIS058", "name": "Huyết áp cao", "description": "Tình trạng sức khỏe mãn tính có thể gây ra các vấn đề tim mạch." },
    { "disease_id": "DIS059", "name": "Viêm khớp", "description": "Bệnh viêm các khớp, gây đau và cứng khớp." },
    { "disease_id": "DIS060", "name": "Bệnh tim", "description": "Các vấn đề về tim mạch, có thể gây đau ngực hoặc khó thở." },
    { "disease_id": "DIS061", "name": "Suy tim", "description": "Tình trạng khi tim không bơm đủ máu để đáp ứng nhu cầu cơ thể." },
    { "disease_id": "DIS062", "name": "Bệnh trĩ", "description": "Sưng và viêm ở tĩnh mạch hậu môn." },
    { "disease_id": "DIS063", "name": "Viêm loét dạ dày", "description": "Sự xuất hiện của các vết loét trong dạ dày." },
    { "disease_id": "DIS064", "name": "Bệnh gút", "description": "Tình trạng viêm khớp do tăng axit uric trong máu." },
    { "disease_id": "DIS065", "name": "Bệnh tiểu đường type 1", "description": "Bệnh tự miễn dịch ảnh hưởng đến insulin." },
    { "disease_id": "DIS066", "name": "Bệnh tiểu đường type 2", "description": "Bệnh liên quan đến insulin và kháng insulin." },
    { "disease_id": "DIS067", "name": "Bệnh động kinh", "description": "Rối loạn thần kinh gây ra cơn co giật." },
    { "disease_id": "DIS068", "name": "Bệnh Alzheimer", "description": "Bệnh thoái hóa thần kinh dẫn đến mất trí nhớ." },
    { "disease_id": "DIS069", "name": "Bệnh Parkinson", "description": "Rối loạn thần kinh ảnh hưởng đến chuyển động." },
    { "disease_id": "DIS070", "name": "Bệnh trầm cảm", "description": "Rối loạn tâm thần có triệu chứng buồn bã, mệt mỏi." },
    { "disease_id": "DIS071", "name": "Rối loạn lo âu", "description": "Bệnh tâm thần gây ra lo âu và căng thẳng." },
    { "disease_id": "DIS072", "name": "Bệnh tự kỷ", "description": "Rối loạn phát triển ảnh hưởng đến giao tiếp và hành vi." },
    { "disease_id": "DIS073", "name": "Bệnh béo phì", "description": "Tình trạng thừa cân ảnh hưởng đến sức khỏe." },
    { "disease_id": "DIS074", "name": "Bệnh suyễn", "description": "Rối loạn hô hấp mãn tính gây khó thở." },
    { "disease_id": "DIS075", "name": "Bệnh viêm phổi tắc nghẽn mạn tính", "description": "Bệnh phổi mãn tính gây khó thở." },
    { "disease_id": "DIS076", "name": "Bệnh lao", "description": "Nhiễm trùng do vi khuẩn lao gây ra." },
    { "disease_id": "DIS077", "name": "Bệnh viêm tụy", "description": "Viêm tụy gây ra đau bụng và khó tiêu." },
    { "disease_id": "DIS078", "name": "Bệnh celiac", "description": "Bệnh tự miễn dịch liên quan đến gluten." },
    { "disease_id": "DIS079", "name": "Bệnh viêm ruột", "description": "Viêm các cơ quan trong hệ tiêu hóa." },
    { "disease_id": "DIS080", "name": "Bệnh sỏi thận", "description": "Sự hình thành sỏi trong thận." },
    { "disease_id": "DIS081", "name": "Bệnh sỏi mật", "description": "Sự hình thành sỏi trong túi mật." },
    { "disease_id": "DIS082", "name": "Bệnh nhiễm trùng đường tiểu", "description": "Nhiễm trùng ảnh hưởng đến đường tiểu." },
    { "disease_id": "DIS083", "name": "Bệnh viêm xoang", "description": "Viêm các xoang trong đầu." },
    { "disease_id": "DIS084", "name": "Bệnh hen suyễn", "description": "Bệnh hô hấp mãn tính gây khó thở." },
    { "disease_id": "DIS085", "name": "Bệnh dị ứng", "description": "Phản ứng quá mức của hệ miễn dịch." },
    { "disease_id": "DIS086", "name": "Bệnh thủy đậu", "description": "Bệnh truyền nhiễm do virus thủy đậu gây ra." },
    { "disease_id": "DIS087", "name": "Bệnh sởi", "description": "Bệnh truyền nhiễm do virus sởi gây ra." },
    { "disease_id": "DIS088", "name": "Bệnh quai bị", "description": "Bệnh truyền nhiễm do virus quai bị gây ra." },
    { "disease_id": "DIS089", "name": "Bệnh viêm gan A", "description": "Nhiễm virus viêm gan A." },
    { "disease_id": "DIS090", "name": "Bệnh dạ dày", "description": "Các vấn đề về dạ dày gây đau bụng." },
    { "disease_id": "DIS091", "name": "Bệnh tiểu đường gestational", "description": "Tiểu đường phát sinh trong thời kỳ mang thai." },
    { "disease_id": "DIS092", "name": "Bệnh hô hấp", "description": "Các bệnh liên quan đến hệ hô hấp." },
    { "disease_id": "DIS093", "name": "Bệnh đau đầu", "description": "Cảm giác đau hoặc khó chịu ở đầu." },
    { "disease_id": "DIS094", "name": "Bệnh thần kinh", "description": "Các rối loạn liên quan đến hệ thần kinh." },
    { "disease_id": "DIS095", "name": "Bệnh hoại tử", "description": "Tình trạng chết tế bào mô." },
    { "disease_id": "DIS096", "name": "Bệnh loãng xương", "description": "Mật độ xương thấp, dễ gãy xương." },
    { "disease_id": "DIS097", "name": "Bệnh nhồi máu cơ tim", "description": "Tình trạng tim không nhận đủ máu." },
    { "disease_id": "DIS098", "name": "Bệnh động mạch vành", "description": "Hẹp động mạch cung cấp máu cho tim." },
    { "disease_id": "DIS099", "name": "Bệnh phổi tắc nghẽn mãn tính", "description": "Bệnh phổi mãn tính ảnh hưởng đến hô hấp." },
    { "disease_id": "DIS100", "name": "Bệnh viêm khớp dạng thấp", "description": "Bệnh viêm khớp mãn tính." },
]);

db.Services.insertMany([
    {
        "service_id": 1,
        "name": "Khám bệnh",
        "description": "Dịch vụ khám bệnh tổng quát.",
        "price": 300000
    },
    {
        "service_id": 2,
        "name": "Xét nghiệm máu",
        "description": "Xét nghiệm để kiểm tra tình trạng sức khỏe.",
        "price": 250000
    },
    {
        "service_id": 3,
        "name": "Chụp X-quang",
        "description": "Dịch vụ chụp X-quang để phát hiện bệnh.",
        "price": 400000
    },
    {
        "service_id": 4,
        "name": "Siêu âm",
        "description": "Siêu âm để kiểm tra các vấn đề bên trong cơ thể.",
        "price": 500000
    },
    {
        "service_id": 5,
        "name": "Tiêm vaccine",
        "description": "Tiêm vaccine phòng ngừa bệnh.",
        "price": 200000
    },
    {
        "service_id": 6,
        "name": "Khám tim mạch",
        "description": "Khám chuyên khoa tim mạch.",
        "price": 350000
    },
    {
        "service_id": 7,
        "name": "Khám phụ khoa",
        "description": "Khám phụ khoa cho nữ giới.",
        "price": 400000
    },
    {
        "service_id": 8,
        "name": "Khám da liễu",
        "description": "Khám và tư vấn về các vấn đề da liễu.",
        "price": 300000
    },
    {
        "service_id": 9,
        "name": "Khám tiêu hóa",
        "description": "Khám các vấn đề về tiêu hóa.",
        "price": 350000
    },
    {
        "service_id": 10,
        "name": "Tư vấn dinh dưỡng",
        "description": "Tư vấn về chế độ dinh dưỡng hợp lý.",
        "price": 250000
    },
    {
        "service_id": 11,
        "name": "Khám mắt",
        "description": "Khám và kiểm tra sức khỏe mắt.",
        "price": 300000
    },
    {
        "service_id": 12,
        "name": "Điều trị viêm nhiễm",
        "description": "Điều trị các bệnh viêm nhiễm.",
        "price": 600000
    },
    {
        "service_id": 13,
        "name": "Phẫu thuật nhỏ",
        "description": "Thực hiện phẫu thuật nhỏ.",
        "price": 1500000
    },
    {
        "service_id": 14,
        "name": "Xét nghiệm nước tiểu",
        "description": "Xét nghiệm để kiểm tra tình trạng sức khỏe.",
        "price": 200000
    },
    {
        "service_id": 15,
        "name": "Tư vấn tâm lý",
        "description": "Tư vấn về các vấn đề tâm lý.",
        "price": 350000
    },
    {
        "service_id": 16,
        "name": "Điều trị bệnh tiểu đường",
        "description": "Chương trình điều trị cho bệnh nhân tiểu đường.",
        "price": 800000
    },
    {
        "service_id": 17,
        "name": "Kiểm tra huyết áp",
        "description": "Kiểm tra tình trạng huyết áp của bệnh nhân.",
        "price": 150000
    },
    {
        "service_id": 18,
        "name": "Khám sức khỏe định kỳ",
        "description": "Khám sức khỏe định kỳ cho bệnh nhân.",
        "price": 500000
    },
    {
        "service_id": 19,
        "name": "Điều trị hen suyễn",
        "description": "Chương trình điều trị cho bệnh nhân hen suyễn.",
        "price": 700000
    },
    {
        "service_id": 20,
        "name": "Điều trị viêm gan",
        "description": "Chương trình điều trị cho bệnh nhân viêm gan.",
        "price": 900000
    },
    // Thêm 180 dịch vụ nữa theo mẫu trên
    {
        "service_id": 21,
        "name": "Điều trị đau dạ dày",
        "description": "Chương trình điều trị cho bệnh nhân đau dạ dày.",
        "price": 600000
    },
    {
        "service_id": 22,
        "name": "Khám bệnh gout",
        "description": "Khám và điều trị bệnh gout.",
        "price": 650000
    },
    {
        "service_id": 23,
        "name": "Điều trị bệnh tim mạch",
        "description": "Chương trình điều trị cho bệnh nhân tim mạch.",
        "price": 1200000
    },
    {
        "service_id": 24,
        "name": "Chăm sóc sức khỏe bà bầu",
        "description": "Chương trình chăm sóc sức khỏe cho phụ nữ mang thai.",
        "price": 800000
    },
    {
        "service_id": 25,
        "name": "Khám sức khỏe sinh sản",
        "description": "Khám sức khỏe sinh sản cho nam và nữ.",
        "price": 500000
    },
    {
        "service_id": 26,
        "name": "Khám tai mũi họng",
        "description": "Khám và điều trị các vấn đề về tai mũi họng.",
        "price": 350000
    },
    {
        "service_id": 27,
        "name": "Điều trị trầm cảm",
        "description": "Chương trình điều trị cho bệnh nhân trầm cảm.",
        "price": 700000
    },
    {
        "service_id": 28,
        "name": "Phẫu thuật tạo hình",
        "description": "Thực hiện phẫu thuật tạo hình.",
        "price": 2000000
    },
    {
        "service_id": 29,
        "name": "Tư vấn điều trị bệnh mãn tính",
        "description": "Tư vấn cho bệnh nhân bệnh mãn tính.",
        "price": 400000
    },
    {
        "service_id": 30,
        "name": "Điều trị bệnh viêm mạch",
        "description": "Chương trình điều trị cho bệnh viêm mạch.",
        "price": 750000
    },
    {
        "service_id": 31,
        "name": "Điều trị bệnh phổi",
        "description": "Chương trình điều trị cho bệnh phổi.",
        "price": 850000
    },
    {
        "service_id": 32,
        "name": "Khám sức khỏe tổng quát cho trẻ em",
        "description": "Khám sức khỏe cho trẻ em.",
        "price": 400000
    },
    {
        "service_id": 33,
        "name": "Điều trị viêm khớp",
        "description": "Chương trình điều trị cho bệnh viêm khớp.",
        "price": 700000
    },
    {
        "service_id": 34,
        "name": "Tư vấn về sức khỏe tâm thần",
        "description": "Tư vấn cho bệnh nhân về sức khỏe tâm thần.",
        "price": 500000
    },
    {
        "service_id": 35,
        "name": "Điều trị bệnh Alzheimer",
        "description": "Chương trình điều trị cho bệnh nhân Alzheimer.",
        "price": 900000
    },
    {
        "service_id": 36,
        "name": "Chăm sóc người cao tuổi",
        "description": "Chương trình chăm sóc sức khỏe cho người cao tuổi.",
        "price": 600000
    },
    {
        "service_id": 37,
        "name": "Khám sức khỏe nghề nghiệp",
        "description": "Khám sức khỏe cho người lao động.",
        "price": 350000
    },
    {
        "service_id": 38,
        "name": "Điều trị bệnh viêm da",
        "description": "Chương trình điều trị cho bệnh viêm da.",
        "price": 700000
    },
    {
        "service_id": 39,
        "name": "Khám bệnh theo yêu cầu",
        "description": "Khám bệnh theo yêu cầu của bệnh nhân.",
        "price": 500000
    },
    {
        "service_id": 40,
        "name": "Khám định kỳ cho người cao tuổi",
        "description": "Khám sức khỏe định kỳ cho người cao tuổi.",
        "price": 600000
    },
    {
        "service_id": 41,
        "name": "Điều trị bệnh viêm ruột",
        "description": "Chương trình điều trị cho bệnh viêm ruột.",
        "price": 800000
    },
    {
        "service_id": 42,
        "name": "Khám bệnh lý hô hấp",
        "description": "Khám và điều trị các vấn đề hô hấp.",
        "price": 700000
    },
    {
        "service_id": 43,
        "name": "Khám bệnh thần kinh",
        "description": "Khám và điều trị các bệnh thần kinh.",
        "price": 800000
    },
    {
        "service_id": 44,
        "name": "Điều trị bệnh nhiễm trùng",
        "description": "Chương trình điều trị cho bệnh nhiễm trùng.",
        "price": 700000
    },
    {
        "service_id": 45,
        "name": "Khám bệnh ngoài da",
        "description": "Khám và điều trị các vấn đề về da.",
        "price": 600000
    },
    {
        "service_id": 46,
        "name": "Khám phụ khoa cho phụ nữ mang thai",
        "description": "Khám phụ khoa dành cho phụ nữ mang thai.",
        "price": 500000
    },
    {
        "service_id": 47,
        "name": "Khám bệnh xã hội",
        "description": "Khám và tư vấn về bệnh xã hội.",
        "price": 600000
    },
    {
        "service_id": 48,
        "name": "Khám mắt định kỳ",
        "description": "Khám sức khỏe mắt định kỳ.",
        "price": 300000
    },
    {
        "service_id": 49,
        "name": "Điều trị bệnh nhiễm virus",
        "description": "Chương trình điều trị cho bệnh nhiễm virus.",
        "price": 800000
    },
    {
        "service_id": 50,
        "name": "Khám nội tiết",
        "description": "Khám và điều trị các vấn đề nội tiết.",
        "price": 750000
    },
    {
        "service_id": 51,
        "name": "Khám sức khỏe cho người lớn tuổi",
        "description": "Khám sức khỏe định kỳ cho người lớn tuổi.",
        "price": 500000
    },
    {
        "service_id": 52,
        "name": "Tư vấn sức khỏe dinh dưỡng",
        "description": "Tư vấn về chế độ dinh dưỡng và ăn uống.",
        "price": 300000
    },
    {
        "service_id": 53,
        "name": "Điều trị bệnh lây truyền qua đường tình dục",
        "description": "Chương trình điều trị cho bệnh lây truyền qua đường tình dục.",
        "price": 700000
    },
    {
        "service_id": 54,
        "name": "Điều trị bệnh gout cấp tính",
        "description": "Điều trị cho bệnh nhân mắc bệnh gout cấp tính.",
        "price": 800000
    },
    {
        "service_id": 55,
        "name": "Khám sức khỏe cho trẻ sơ sinh",
        "description": "Khám sức khỏe cho trẻ sơ sinh.",
        "price": 400000
    },
    {
        "service_id": 56,
        "name": "Điều trị bệnh viêm khớp mạn tính",
        "description": "Chương trình điều trị cho bệnh viêm khớp mạn tính.",
        "price": 800000
    },
    {
        "service_id": 57,
        "name": "Khám và điều trị bệnh về tai",
        "description": "Khám và điều trị các vấn đề về tai.",
        "price": 600000
    },
    {
        "service_id": 58,
        "name": "Khám và điều trị bệnh phổi tắc nghẽn mãn tính",
        "description": "Khám và điều trị bệnh phổi tắc nghẽn mãn tính.",
        "price": 900000
    },
    {
        "service_id": 59,
        "name": "Tư vấn sức khỏe tâm lý cho trẻ em",
        "description": "Tư vấn sức khỏe tâm lý cho trẻ em.",
        "price": 500000
    },
    {
        "service_id": 60,
        "name": "Khám và điều trị bệnh lý thần kinh ngoại biên",
        "description": "Khám và điều trị bệnh lý thần kinh ngoại biên.",
        "price": 800000
    },
    {
        "service_id": 61,
        "name": "Khám và điều trị bệnh lý gan mật",
        "description": "Khám và điều trị bệnh lý gan mật.",
        "price": 900000
    },
    {
        "service_id": 62,
        "name": "Khám sức khỏe cho nhân viên văn phòng",
        "description": "Khám sức khỏe cho nhân viên văn phòng.",
        "price": 500000
    },
    {
        "service_id": 63,
        "name": "Khám và điều trị bệnh lý tiêu hóa",
        "description": "Khám và điều trị bệnh lý tiêu hóa.",
        "price": 700000
    },
    {
        "service_id": 64,
        "name": "Khám và điều trị bệnh lý hệ xương khớp",
        "description": "Khám và điều trị bệnh lý hệ xương khớp.",
        "price": 800000
    },
    {
        "service_id": 65,
        "name": "Khám và điều trị bệnh lý tim mạch",
        "description": "Khám và điều trị bệnh lý tim mạch.",
        "price": 1000000
    },
    {
        "service_id": 66,
        "name": "Điều trị bệnh lý nội tiết",
        "description": "Chương trình điều trị cho bệnh lý nội tiết.",
        "price": 900000
    },
    {
        "service_id": 67,
        "name": "Khám và điều trị bệnh lý hô hấp",
        "description": "Khám và điều trị bệnh lý hô hấp.",
        "price": 800000
    },
    {
        "service_id": 68,
        "name": "Khám và điều trị bệnh lý tiết niệu",
        "description": "Khám và điều trị bệnh lý tiết niệu.",
        "price": 700000
    },
    {
        "service_id": 69,
        "name": "Khám và điều trị bệnh lý thần kinh trung ương",
        "description": "Khám và điều trị bệnh lý thần kinh trung ương.",
        "price": 900000
    },
    {
        "service_id": 70,
        "name": "Khám và điều trị bệnh lý tâm thần",
        "description": "Khám và điều trị bệnh lý tâm thần.",
        "price": 1000000
    },
    {
        "service_id": 71,
        "name": "Khám và điều trị bệnh lý nội khoa",
        "description": "Khám và điều trị bệnh lý nội khoa.",
        "price": 800000
    },
    {
        "service_id": 72,
        "name": "Khám và điều trị bệnh lý nhi khoa",
        "description": "Khám và điều trị bệnh lý nhi khoa.",
        "price": 600000
    },
    {
        "service_id": 73,
        "name": "Khám và điều trị bệnh lý phụ khoa",
        "description": "Khám và điều trị bệnh lý phụ khoa.",
        "price": 800000
    },
    {
        "service_id": 74,
        "name": "Khám và điều trị bệnh lý nam khoa",
        "description": "Khám và điều trị bệnh lý nam khoa.",
        "price": 800000
    },
    {
        "service_id": 75,
        "name": "Khám và điều trị bệnh lý thận",
        "description": "Khám và điều trị bệnh lý thận.",
        "price": 900000
    },
    {
        "service_id": 76,
        "name": "Khám và điều trị bệnh lý tai mũi họng",
        "description": "Khám và điều trị bệnh lý tai mũi họng.",
        "price": 800000
    },
    {
        "service_id": 77,
        "name": "Khám và điều trị bệnh lý mắt",
        "description": "Khám và điều trị bệnh lý mắt.",
        "price": 800000
    },
    {
        "service_id": 78,
        "name": "Khám và điều trị bệnh lý dạ dày",
        "description": "Khám và điều trị bệnh lý dạ dày.",
        "price": 700000
    },
    {
        "service_id": 79,
        "name": "Khám và điều trị bệnh lý ruột",
        "description": "Khám và điều trị bệnh lý ruột.",
        "price": 800000
    },
    {
        "service_id": 80,
        "name": "Khám và điều trị bệnh lý ung thư",
        "description": "Khám và điều trị bệnh lý ung thư.",
        "price": 2000000
    },
    {
        "service_id": 81,
        "name": "Khám và điều trị bệnh lý tim mạch",
        "description": "Khám và điều trị bệnh lý tim mạch.",
        "price": 1500000
    },
    {
        "service_id": 82,
        "name": "Khám và điều trị bệnh lý phổi",
        "description": "Khám và điều trị bệnh lý phổi.",
        "price": 900000
    },
    {
        "service_id": 83,
        "name": "Khám và điều trị bệnh lý gan",
        "description": "Khám và điều trị bệnh lý gan.",
        "price": 900000
    },
    {
        "service_id": 84,
        "name": "Khám và điều trị bệnh lý đường tiêu hóa",
        "description": "Khám và điều trị bệnh lý đường tiêu hóa.",
        "price": 800000
    },
    {
        "service_id": 85,
        "name": "Khám và điều trị bệnh lý nội tiết",
        "description": "Khám và điều trị bệnh lý nội tiết.",
        "price": 800000
    },
    {
        "service_id": 86,
        "name": "Khám và điều trị bệnh lý tâm thần",
        "description": "Khám và điều trị bệnh lý tâm thần.",
        "price": 1000000
    },
    {
        "service_id": 87,
        "name": "Khám và điều trị bệnh lý tủy sống",
        "description": "Khám và điều trị bệnh lý tủy sống.",
        "price": 1000000
    },
    {
        "service_id": 88,
        "name": "Khám và điều trị bệnh lý mắt",
        "description": "Khám và điều trị bệnh lý mắt.",
        "price": 800000
    },
    {
        "service_id": 89,
        "name": "Khám và điều trị bệnh lý hô hấp",
        "description": "Khám và điều trị bệnh lý hô hấp.",
        "price": 800000
    },
    {
        "service_id": 90,
        "name": "Khám và điều trị bệnh lý tiết niệu",
        "description": "Khám và điều trị bệnh lý tiết niệu.",
        "price": 700000
    },
    {
        "service_id": 91,
        "name": "Khám và điều trị bệnh lý xương khớp",
        "description": "Khám và điều trị bệnh lý xương khớp.",
        "price": 800000
    },
    {
        "service_id": 92,
        "name": "Khám và điều trị bệnh lý mạch máu",
        "description": "Khám và điều trị bệnh lý mạch máu.",
        "price": 900000
    },
    {
        "service_id": 93,
        "name": "Khám và điều trị bệnh lý nội khoa",
        "description": "Khám và điều trị bệnh lý nội khoa.",
        "price": 800000
    },
    {
        "service_id": 94,
        "name": "Khám và điều trị bệnh lý hô hấp",
        "description": "Khám và điều trị bệnh lý hô hấp.",
        "price": 800000
    },
    {
        "service_id": 95,
        "name": "Khám và điều trị bệnh lý mạch máu",
        "description": "Khám và điều trị bệnh lý mạch máu.",
        "price": 900000
    },
    {
        "service_id": 96,
        "name": "Khám và điều trị bệnh lý nội tiết",
        "description": "Khám và điều trị bệnh lý nội tiết.",
        "price": 900000
    },
    {
        "service_id": 97,
        "name": "Khám và điều trị bệnh lý tâm thần",
        "description": "Khám và điều trị bệnh lý tâm thần.",
        "price": 1000000
    },
    {
        "service_id": 98,
        "name": "Khám và điều trị bệnh lý gan mật",
        "description": "Khám và điều trị bệnh lý gan mật.",
        "price": 900000
    },
    {
        "service_id": 99,
        "name": "Khám và điều trị bệnh lý tiêu hóa",
        "description": "Khám và điều trị bệnh lý tiêu hóa.",
        "price": 800000
    },
    {
        "service_id": 100,
        "name": "Khám và điều trị bệnh lý tiết niệu",
        "description": "Khám và điều trị bệnh lý tiết niệu.",
        "price": 700000
    },
    {
        "service_id": 101,
        "name": "Khám và điều trị bệnh lý thận",
        "description": "Khám và điều trị bệnh lý thận.",
        "price": 900000
    },
    {
        "service_id": 102,
        "name": "Khám và điều trị bệnh lý thần kinh",
        "description": "Khám và điều trị bệnh lý thần kinh.",
        "price": 1000000
    },
    {
        "service_id": 103,
        "name": "Khám và điều trị bệnh lý nội khoa",
        "description": "Khám và điều trị bệnh lý nội khoa.",
        "price": 800000
    },
    {
        "service_id": 104,
        "name": "Khám và điều trị bệnh lý hô hấp",
        "description": "Khám và điều trị bệnh lý hô hấp.",
        "price": 800000
    },
    {
        "service_id": 105,
        "name": "Khám và điều trị bệnh lý gan mật",
        "description": "Khám và điều trị bệnh lý gan mật.",
        "price": 900000
    },
    {
        "service_id": 106,
        "name": "Khám và điều trị bệnh lý đường tiêu hóa",
        "description": "Khám và điều trị bệnh lý đường tiêu hóa.",
        "price": 800000
    },
    {
        "service_id": 107,
        "name": "Khám và điều trị bệnh lý hô hấp",
        "description": "Khám và điều trị bệnh lý hô hấp.",
        "price": 800000
    },
    {
        "service_id": 108,
        "name": "Khám và điều trị bệnh lý thần kinh",
        "description": "Khám và điều trị bệnh lý thần kinh.",
        "price": 1000000
    },
    {
        "service_id": 109,
        "name": "Khám và điều trị bệnh lý nội khoa",
        "description": "Khám và điều trị bệnh lý nội khoa.",
        "price": 800000
    },
    {
        "service_id": 110,
        "name": "Khám và điều trị bệnh lý mắt",
        "description": "Khám và điều trị bệnh lý mắt.",
        "price": 800000
    },
    {
        "service_id": 111,
        "name": "Khám và điều trị bệnh lý tâm thần",
        "description": "Khám và điều trị bệnh lý tâm thần.",
        "price": 1000000
    },
    {
        "service_id": 112,
        "name": "Khám và điều trị bệnh lý mạch máu",
        "description": "Khám và điều trị bệnh lý mạch máu.",
        "price": 900000
    },
    {
        "service_id": 113,
        "name": "Khám và điều trị bệnh lý thần kinh",
        "description": "Khám và điều trị bệnh lý thần kinh.",
        "price": 1000000
    },
    {
        "service_id": 114,
        "name": "Khám và điều trị bệnh lý nội khoa",
        "description": "Khám và điều trị bệnh lý nội khoa.",
        "price": 800000
    },
    {
        "service_id": 115,
        "name": "Khám và điều trị bệnh lý đường tiêu hóa",
        "description": "Khám và điều trị bệnh lý đường tiêu hóa.",
        "price": 800000
    },
    {
        "service_id": 116,
        "name": "Khám và điều trị bệnh lý thận",
        "description": "Khám và điều trị bệnh lý thận.",
        "price": 900000
    },
    {
        "service_id": 117,
        "name": "Khám và điều trị bệnh lý gan",
        "description": "Khám và điều trị bệnh lý gan.",
        "price": 900000
    },
    {
        "service_id": 118,
        "name": "Khám và điều trị bệnh lý nội tiết",
        "description": "Khám và điều trị bệnh lý nội tiết.",
        "price": 800000
    },
    {
        "service_id": 119,
        "name": "Khám và điều trị bệnh lý mắt",
        "description": "Khám và điều trị bệnh lý mắt.",
        "price": 800000
    },
    {
        "service_id": 120,
        "name": "Khám và điều trị bệnh lý hô hấp",
        "description": "Khám và điều trị bệnh lý hô hấp.",
        "price": 800000
    },
    {
        "service_id": 121,
        "name": "Khám và điều trị bệnh lý tiết niệu",
        "description": "Khám và điều trị bệnh lý tiết niệu.",
        "price": 700000
    },
    {
        "service_id": 122,
        "name": "Khám và điều trị bệnh lý xương khớp",
        "description": "Khám và điều trị bệnh lý xương khớp.",
        "price": 800000
    },
    {
        "service_id": 123,
        "name": "Khám và điều trị bệnh lý mạch máu",
        "description": "Khám và điều trị bệnh lý mạch máu.",
        "price": 900000
    },
    {
        "service_id": 124,
        "name": "Khám và điều trị bệnh lý tim mạch",
        "description": "Khám và điều trị bệnh lý tim mạch.",
        "price": 1500000
    },
    {
        "service_id": 125,
        "name": "Khám và điều trị bệnh lý phổi",
        "description": "Khám và điều trị bệnh lý phổi.",
        "price": 900000
    },
    {
        "service_id": 126,
        "name": "Khám và điều trị bệnh lý gan mật",
        "description": "Khám và điều trị bệnh lý gan mật.",
        "price": 900000
    },
    {
        "service_id": 127,
        "name": "Khám và điều trị bệnh lý đường tiêu hóa",
        "description": "Khám và điều trị bệnh lý đường tiêu hóa.",
        "price": 800000
    },
    {
        "service_id": 128,
        "name": "Khám và điều trị bệnh lý hô hấp",
        "description": "Khám và điều trị bệnh lý hô hấp.",
        "price": 800000
    },
    {
        "service_id": 129,
        "name": "Khám và điều trị bệnh lý thần kinh",
        "description": "Khám và điều trị bệnh lý thần kinh.",
        "price": 1000000
    },
    {
        "service_id": 130,
        "name": "Khám và điều trị bệnh lý nội khoa",
        "description": "Khám và điều trị bệnh lý nội khoa.",
        "price": 800000
    },
    {
        "service_id": 131,
        "name": "Khám và điều trị bệnh lý mắt",
        "description": "Khám và điều trị bệnh lý mắt.",
        "price": 800000
    },
    {
        "service_id": 132,
        "name": "Khám và điều trị bệnh lý tâm thần",
        "description": "Khám và điều trị bệnh lý tâm thần.",
        "price": 1000000
    },
    {
        "service_id": 133,
        "name": "Khám và điều trị bệnh lý mạch máu",
        "description": "Khám và điều trị bệnh lý mạch máu.",
        "price": 900000
    },
    {
        "service_id": 134,
        "name": "Khám và điều trị bệnh lý hô hấp",
        "description": "Khám và điều trị bệnh lý hô hấp.",
        "price": 800000
    },
    {
        "service_id": 135,
        "name": "Khám và điều trị bệnh lý tiết niệu",
        "description": "Khám và điều trị bệnh lý tiết niệu.",
        "price": 700000
    },
    {
        "service_id": 136,
        "name": "Khám và điều trị bệnh lý xương khớp",
        "description": "Khám và điều trị bệnh lý xương khớp.",
        "price": 800000
    },
    {
        "service_id": 137,
        "name": "Khám và điều trị bệnh lý tim mạch",
        "description": "Khám và điều trị bệnh lý tim mạch.",
        "price": 1500000
    },
    {
        "service_id": 138,
        "name": "Khám và điều trị bệnh lý phổi",
        "description": "Khám và điều trị bệnh lý phổi.",
        "price": 900000
    },
    {
        "service_id": 139,
        "name": "Khám và điều trị bệnh lý gan mật",
        "description": "Khám và điều trị bệnh lý gan mật.",
        "price": 900000
    },
    {
        "service_id": 140,
        "name": "Khám và điều trị bệnh lý đường tiêu hóa",
        "description": "Khám và điều trị bệnh lý đường tiêu hóa.",
        "price": 800000
    },
    {
        "service_id": 141,
        "name": "Khám và điều trị bệnh lý hô hấp",
        "description": "Khám và điều trị bệnh lý hô hấp.",
        "price": 800000
    },
    {
        "service_id": 142,
        "name": "Khám và điều trị bệnh lý thần kinh",
        "description": "Khám và điều trị bệnh lý thần kinh.",
        "price": 1000000
    },
    {
        "service_id": 143,
        "name": "Khám và điều trị bệnh lý nội khoa",
        "description": "Khám và điều trị bệnh lý nội khoa.",
        "price": 800000
    },
    {
        "service_id": 144,
        "name": "Khám và điều trị bệnh lý mắt",
        "description": "Khám và điều trị bệnh lý mắt.",
        "price": 800000
    },
    {
        "service_id": 145,
        "name": "Khám và điều trị bệnh lý tâm thần",
        "description": "Khám và điều trị bệnh lý tâm thần.",
        "price": 1000000
    },
    {
        "service_id": 146,
        "name": "Khám và điều trị bệnh lý mạch máu",
        "description": "Khám và điều trị bệnh lý mạch máu.",
        "price": 900000
    },
    {
        "service_id": 147,
        "name": "Khám và điều trị bệnh lý xương khớp",
        "description": "Khám và điều trị bệnh lý xương khớp.",
        "price": 800000
    },
    {
        "service_id": 148,
        "name": "Khám và điều trị bệnh lý tim mạch",
        "description": "Khám và điều trị bệnh lý tim mạch.",
        "price": 1500000
    },
    {
        "service_id": 149,
        "name": "Khám và điều trị bệnh lý phổi",
        "description": "Khám và điều trị bệnh lý phổi.",
        "price": 900000
    },
    {
        "service_id": 150,
        "name": "Khám và điều trị bệnh lý gan mật",
        "description": "Khám và điều trị bệnh lý gan mật.",
        "price": 900000
    },
    {
        "service_id": 151,
        "name": "Khám và điều trị bệnh lý đường tiêu hóa",
        "description": "Khám và điều trị bệnh lý đường tiêu hóa.",
        "price": 800000
    },
    {
        "service_id": 152,
        "name": "Khám và điều trị bệnh lý hô hấp",
        "description": "Khám và điều trị bệnh lý hô hấp.",
        "price": 800000
    },
    {
        "service_id": 153,
        "name": "Khám và điều trị bệnh lý thần kinh",
        "description": "Khám và điều trị bệnh lý thần kinh.",
        "price": 1000000
    },
    {
        "service_id": 154,
        "name": "Khám và điều trị bệnh lý nội khoa",
        "description": "Khám và điều trị bệnh lý nội khoa.",
        "price": 800000
    },
    {
        "service_id": 155,
        "name": "Khám và điều trị bệnh lý mắt",
        "description": "Khám và điều trị bệnh lý mắt.",
        "price": 800000
    },
    {
        "service_id": 156,
        "name": "Khám và điều trị bệnh lý tâm thần",
        "description": "Khám và điều trị bệnh lý tâm thần.",
        "price": 1000000
    },
    {
        "service_id": 157,
        "name": "Khám và điều trị bệnh lý mạch máu",
        "description": "Khám và điều trị bệnh lý mạch máu.",
        "price": 900000
    },
    {
        "service_id": 158,
        "name": "Khám và điều trị bệnh lý xương khớp",
        "description": "Khám và điều trị bệnh lý xương khớp.",
        "price": 800000
    },
    {
        "service_id": 159,
        "name": "Khám và điều trị bệnh lý tim mạch",
        "description": "Khám và điều trị bệnh lý tim mạch.",
        "price": 1500000
    },
    {
        "service_id": 160,
        "name": "Khám và điều trị bệnh lý phổi",
        "description": "Khám và điều trị bệnh lý phổi.",
        "price": 900000
    },
    {
        "service_id": 161,
        "name": "Khám và điều trị bệnh lý gan mật",
        "description": "Khám và điều trị bệnh lý gan mật.",
        "price": 900000
    },
    {
        "service_id": 162,
        "name": "Khám và điều trị bệnh lý đường tiêu hóa",
        "description": "Khám và điều trị bệnh lý đường tiêu hóa.",
        "price": 800000
    },
    {
        "service_id": 163,
        "name": "Khám và điều trị bệnh lý hô hấp",
        "description": "Khám và điều trị bệnh lý hô hấp.",
        "price": 800000
    },
    {
        "service_id": 164,
        "name": "Khám và điều trị bệnh lý thần kinh",
        "description": "Khám và điều trị bệnh lý thần kinh.",
        "price": 1000000
    },
    {
        "service_id": 165,
        "name": "Khám và điều trị bệnh lý nội khoa",
        "description": "Khám và điều trị bệnh lý nội khoa.",
        "price": 800000
    },
    {
        "service_id": 166,
        "name": "Khám và điều trị bệnh lý mắt",
        "description": "Khám và điều trị bệnh lý mắt.",
        "price": 800000
    },
    {
        "service_id": 167,
        "name": "Khám và điều trị bệnh lý tâm thần",
        "description": "Khám và điều trị bệnh lý tâm thần.",
        "price": 1000000
    },
    {
        "service_id": 168,
        "name": "Khám và điều trị bệnh lý mạch máu",
        "description": "Khám và điều trị bệnh lý mạch máu.",
        "price": 900000
    },
    {
        "service_id": 169,
        "name": "Khám và điều trị bệnh lý xương khớp",
        "description": "Khám và điều trị bệnh lý xương khớp.",
        "price": 800000
    },
    {
        "service_id": 170,
        "name": "Khám và điều trị bệnh lý tim mạch",
        "description": "Khám và điều trị bệnh lý tim mạch.",
        "price": 1500000
    },
    {
        "service_id": 171,
        "name": "Khám và điều trị bệnh lý phổi",
        "description": "Khám và điều trị bệnh lý phổi.",
        "price": 900000
    },
    {
        "service_id": 172,
        "name": "Khám và điều trị bệnh lý gan mật",
        "description": "Khám và điều trị bệnh lý gan mật.",
        "price": 900000
    },
    {
        "service_id": 173,
        "name": "Khám và điều trị bệnh lý đường tiêu hóa",
        "description": "Khám và điều trị bệnh lý đường tiêu hóa.",
        "price": 800000
    },
    {
        "service_id": 174,
        "name": "Khám và điều trị bệnh lý hô hấp",
        "description": "Khám và điều trị bệnh lý hô hấp.",
        "price": 800000
    },
    {
        "service_id": 175,
        "name": "Khám và điều trị bệnh lý thần kinh",
        "description": "Khám và điều trị bệnh lý thần kinh.",
        "price": 1000000
    },
    {
        "service_id": 176,
        "name": "Khám và điều trị bệnh lý nội khoa",
        "description": "Khám và điều trị bệnh lý nội khoa.",
        "price": 800000
    },
    {
        "service_id": 177,
        "name": "Khám và điều trị bệnh lý mắt",
        "description": "Khám và điều trị bệnh lý mắt.",
        "price": 800000
    },
    {
        "service_id": 178,
        "name": "Khám và điều trị bệnh lý tâm thần",
        "description": "Khám và điều trị bệnh lý tâm thần.",
        "price": 1000000
    },
    {
        "service_id": 179,
        "name": "Khám và điều trị bệnh lý mạch máu",
        "description": "Khám và điều trị bệnh lý mạch máu.",
        "price": 900000
    },
    {
        "service_id": 180,
        "name": "Khám và điều trị bệnh lý xương khớp",
        "description": "Khám và điều trị bệnh lý xương khớp.",
        "price": 800000
    },
    {
        "service_id": 181,
        "name": "Khám và điều trị bệnh lý tim mạch",
        "description": "Khám và điều trị bệnh lý tim mạch.",
        "price": 1500000
    },
    {
        "service_id": 182,
        "name": "Khám và điều trị bệnh lý phổi",
        "description": "Khám và điều trị bệnh lý phổi.",
        "price": 900000
    },
    {
        "service_id": 183,
        "name": "Khám và điều trị bệnh lý gan mật",
        "description": "Khám và điều trị bệnh lý gan mật.",
        "price": 900000
    },
    {
        "service_id": 184,
        "name": "Khám và điều trị bệnh lý đường tiêu hóa",
        "description": "Khám và điều trị bệnh lý đường tiêu hóa.",
        "price": 800000
    },
    {
        "service_id": 185,
        "name": "Khám và điều trị bệnh lý hô hấp",
        "description": "Khám và điều trị bệnh lý hô hấp.",
        "price": 800000
    },
    {
        "service_id": 186,
        "name": "Khám và điều trị bệnh lý thần kinh",
        "description": "Khám và điều trị bệnh lý thần kinh.",
        "price": 1000000
    },
    {
        "service_id": 187,
        "name": "Khám và điều trị bệnh lý nội khoa",
        "description": "Khám và điều trị bệnh lý nội khoa.",
        "price": 800000
    },
    {
        "service_id": 188,
        "name": "Khám và điều trị bệnh lý mắt",
        "description": "Khám và điều trị bệnh lý mắt.",
        "price": 800000
    },
    {
        "service_id": 189,
        "name": "Khám và điều trị bệnh lý tâm thần",
        "description": "Khám và điều trị bệnh lý tâm thần.",
        "price": 1000000
    },
    {
        "service_id": 190,
        "name": "Khám và điều trị bệnh lý mạch máu",
        "description": "Khám và điều trị bệnh lý mạch máu.",
        "price": 900000
    },
    {
        "service_id": 191,
        "name": "Khám và điều trị bệnh lý xương khớp",
        "description": "Khám và điều trị bệnh lý xương khớp.",
        "price": 800000
    },
    {
        "service_id": 192,
        "name": "Khám và điều trị bệnh lý tim mạch",
        "description": "Khám và điều trị bệnh lý tim mạch.",
        "price": 1500000
    },
    {
        "service_id": 193,
        "name": "Khám và điều trị bệnh lý phổi",
        "description": "Khám và điều trị bệnh lý phổi.",
        "price": 900000
    },
    {
        "service_id": 194,
        "name": "Khám và điều trị bệnh lý gan mật",
        "description": "Khám và điều trị bệnh lý gan mật.",
        "price": 900000
    },
    {
        "service_id": 195,
        "name": "Khám và điều trị bệnh lý đường tiêu hóa",
        "description": "Khám và điều trị bệnh lý đường tiêu hóa.",
        "price": 800000
    },
    {
        "service_id": 196,
        "name": "Khám và điều trị bệnh lý hô hấp",
        "description": "Khám và điều trị bệnh lý hô hấp.",
        "price": 800000
    },
    {
        "service_id": 197,
        "name": "Khám và điều trị bệnh lý thần kinh",
        "description": "Khám và điều trị bệnh lý thần kinh.",
        "price": 1000000
    },
    {
        "service_id": 198,
        "name": "Khám và điều trị bệnh lý nội khoa",
        "description": "Khám và điều trị bệnh lý nội khoa.",
        "price": 800000
    },
    {
        "service_id": 199,
        "name": "Khám và điều trị bệnh lý mắt",
        "description": "Khám và điều trị bệnh lý mắt.",
        "price": 800000
    },
    {
        "service_id": 200,
        "name": "Khám và điều trị bệnh lý tâm thần",
        "description": "Khám và điều trị bệnh lý tâm thần.",
        "price": 1000000
    },
    {
        "service_id": 201,
        "name": "Khám và điều trị bệnh lý mạch máu",
        "description": "Khám và điều trị bệnh lý mạch máu.",
        "price": 900000
    }
]);
db.Medicines.insertMany([
    {
        "medicine_id": "MED001",
        "name": "Paracetamol",
        "description": "Thuốc giảm đau và hạ sốt.",
        "price": 30000
    },
    {
        "medicine_id": "MED002",
        "name": "Ibuprofen",
        "description": "Thuốc chống viêm, giảm đau.",
        "price": 40000
    },
    {
        "medicine_id": "MED003",
        "name": "Amoxicillin",
        "description": "Kháng sinh điều trị nhiễm trùng.",
        "price": 45000
    },
    {
        "medicine_id": "MED004",
        "name": "Ciprofloxacin",
        "description": "Kháng sinh cho nhiễm trùng đường tiết niệu.",
        "price": 60000
    },
    {
        "medicine_id": "MED005",
        "name": "Metformin",
        "description": "Thuốc điều trị tiểu đường.",
        "price": 80000
    },
    {
        "medicine_id": "MED006",
        "name": "Lisinopril",
        "description": "Thuốc hạ huyết áp.",
        "price": 75000
    },
    {
        "medicine_id": "MED007",
        "name": "Aspirin",
        "description": "Thuốc giảm đau, hạ sốt và chống viêm.",
        "price": 25000
    },
    {
        "medicine_id": "MED008",
        "name": "Omeprazole",
        "description": "Thuốc điều trị bệnh trào ngược dạ dày thực quản.",
        "price": 70000
    },
    {
        "medicine_id": "MED009",
        "name": "Simvastatin",
        "description": "Thuốc hạ cholesterol.",
        "price": 85000
    },
    {
        "medicine_id": "MED010",
        "name": "Levothyroxine",
        "description": "Thuốc điều trị suy giáp.",
        "price": 90000
    },
    {
        "medicine_id": "MED011",
        "name": "Sertraline",
        "description": "Thuốc chống trầm cảm.",
        "price": 95000
    },
    {
        "medicine_id": "MED012",
        "name": "Losartan",
        "description": "Thuốc điều trị huyết áp cao.",
        "price": 80000
    },
    {
        "medicine_id": "MED013",
        "name": "Albuterol",
        "description": "Thuốc giãn phế quản cho bệnh hen suyễn.",
        "price": 60000
    },
    {
        "medicine_id": "MED014",
        "name": "Hydrochlorothiazide",
        "description": "Thuốc lợi tiểu.",
        "price": 50000
    },
    {
        "medicine_id": "MED015",
        "name": "Fluoxetine",
        "description": "Thuốc chống trầm cảm.",
        "price": 100000
    },
    {
        "medicine_id": "MED016",
        "name": "Atorvastatin",
        "description": "Thuốc hạ cholesterol.",
        "price": 90000
    },
    {
        "medicine_id": "MED017",
        "name": "Amlodipine",
        "description": "Thuốc điều trị huyết áp cao.",
        "price": 80000
    },
    {
        "medicine_id": "MED018",
        "name": "Prednisone",
        "description": "Thuốc chống viêm và miễn dịch.",
        "price": 95000
    },
    {
        "medicine_id": "MED019",
        "name": "Montelukast",
        "description": "Thuốc điều trị hen suyễn.",
        "price": 70000
    },
    {
        "medicine_id": "MED020",
        "name": "Doxycycline",
        "description": "Kháng sinh điều trị nhiễm trùng.",
        "price": 50000
    },
    {
        "medicine_id": "MED021",
        "name": "Nitroglycerin",
        "description": "Thuốc điều trị bệnh tim mạch.",
        "price": 120000
    },
    {
        "medicine_id": "MED022",
        "name": "Metoprolol",
        "description": "Thuốc hạ huyết áp và điều trị bệnh tim.",
        "price": 90000
    },
    {
        "medicine_id": "MED023",
        "name": "Ranitidine",
        "description": "Thuốc điều trị loét dạ dày.",
        "price": 60000
    },
    {
        "medicine_id": "MED024",
        "name": "Bupropion",
        "description": "Thuốc chống trầm cảm và giúp bỏ thuốc lá.",
        "price": 110000
    },
    {
        "medicine_id": "MED025",
        "name": "Cetirizine",
        "description": "Thuốc chống dị ứng.",
        "price": 40000
    },
    {
        "medicine_id": "MED026",
        "name": "Atenolol",
        "description": "Thuốc điều trị huyết áp cao.",
        "price": 80000
    },
    {
        "medicine_id": "MED027",
        "name": "Furosemide",
        "description": "Thuốc lợi tiểu điều trị phù nề.",
        "price": 50000
    },
    {
        "medicine_id": "MED028",
        "name": "Gabapentin",
        "description": "Thuốc điều trị đau thần kinh.",
        "price": 70000
    },
    {
        "medicine_id": "MED029",
        "name": "Clopidogrel",
        "description": "Thuốc chống đông máu.",
        "price": 90000
    },
    {
        "medicine_id": "MED030",
        "name": "Tamsulosin",
        "description": "Thuốc điều trị phì đại tuyến tiền liệt.",
        "price": 80000
    },
    {
        "medicine_id": "MED031",
        "name": "Insulin",
        "description": "Thuốc điều trị tiểu đường.",
        "price": 150000
    },
    {
        "medicine_id": "MED032",
        "name": "Sildenafil",
        "description": "Thuốc điều trị rối loạn cương dương.",
        "price": 120000
    },
    {
        "medicine_id": "MED033",
        "name": "Acyclovir",
        "description": "Kháng virus điều trị nhiễm herpes.",
        "price": 70000
    },
    {
        "medicine_id": "MED034",
        "name": "Citalopram",
        "description": "Thuốc chống trầm cảm.",
        "price": 95000
    },
    {
        "medicine_id": "MED035",
        "name": "Naproxen",
        "description": "Thuốc chống viêm và giảm đau.",
        "price": 60000
    },
    {
        "medicine_id": "MED036",
        "name": "Zolpidem",
        "description": "Thuốc điều trị mất ngủ.",
        "price": 80000
    },
    {
        "medicine_id": "MED037",
        "name": "Latanoprost",
        "description": "Thuốc điều trị glaucoma.",
        "price": 150000
    },
    {
        "medicine_id": "MED038",
        "name": "Morphine",
        "description": "Thuốc giảm đau mạnh.",
        "price": 200000
    },
    {
        "medicine_id": "MED039",
        "name": "Tramadol",
        "description": "Thuốc giảm đau.",
        "price": 70000
    },
    {
        "medicine_id": "MED040",
        "name": "Candesartan",
        "description": "Thuốc điều trị huyết áp cao.",
        "price": 90000
    },
    {
        "medicine_id": "MED041",
        "name": "Fentanyl",
        "description": "Thuốc giảm đau mạnh.",
        "price": 250000
    },
    {
        "medicine_id": "MED042",
        "name": "Esomeprazole",
        "description": "Thuốc điều trị trào ngược dạ dày thực quản.",
        "price": 90000
    },
    {
        "medicine_id": "MED043",
        "name": "Cholecalciferol",
        "description": "Vitamin D điều trị thiếu vitamin D.",
        "price": 50000
    },
    {
        "medicine_id": "MED044",
        "name": "Dexamethasone",
        "description": "Thuốc chống viêm và miễn dịch.",
        "price": 85000
    },
    {
        "medicine_id": "MED045",
        "name": "Hydrocodone",
        "description": "Thuốc giảm đau mạnh.",
        "price": 200000
    },
    {
        "medicine_id": "MED046",
        "name": "Raloxifene",
        "description": "Thuốc điều trị loãng xương.",
        "price": 120000
    },
    {
        "medicine_id": "MED047",
        "name": "Trazodone",
        "description": "Thuốc chống trầm cảm.",
        "price": 80000
    },
    {
        "medicine_id": "MED048",
        "name": "Acarbose",
        "description": "Thuốc điều trị tiểu đường.",
        "price": 90000
    },
    {
        "medicine_id": "MED049",
        "name": "Cefalexin",
        "description": "Kháng sinh điều trị nhiễm trùng.",
        "price": 70000
    },
    {
        "medicine_id": "MED050",
        "name": "Quetiapine",
        "description": "Thuốc điều trị rối loạn tâm thần.",
        "price": 150000
    },
    {
        "medicine_id": "MED051",
        "name": "Venlafaxine",
        "description": "Thuốc chống trầm cảm.",
        "price": 110000
    },
    {
        "medicine_id": "MED052",
        "name": "Benzonatate",
        "description": "Thuốc giảm ho.",
        "price": 60000
    },
    {
        "medicine_id": "MED053",
        "name": "Sitagliptin",
        "description": "Thuốc điều trị tiểu đường.",
        "price": 130000
    },
    {
        "medicine_id": "MED054",
        "name": "Glimepiride",
        "description": "Thuốc điều trị tiểu đường.",
        "price": 70000
    },
    {
        "medicine_id": "MED055",
        "name": "Liraglutide",
        "description": "Thuốc điều trị tiểu đường.",
        "price": 250000
    },
    {
        "medicine_id": "MED056",
        "name": "Pantoprazole",
        "description": "Thuốc điều trị trào ngược dạ dày thực quản.",
        "price": 90000
    },
    {
        "medicine_id": "MED057",
        "name": "Betamethasone",
        "description": "Thuốc chống viêm và miễn dịch.",
        "price": 85000
    },
    {
        "medicine_id": "MED058",
        "name": "Isoniazid",
        "description": "Kháng sinh điều trị bệnh lao.",
        "price": 70000
    },
    {
        "medicine_id": "MED059",
        "name": "Rifampin",
        "description": "Kháng sinh điều trị bệnh lao.",
        "price": 120000
    },
    {
        "medicine_id": "MED060",
        "name": "Ethambutol",
        "description": "Kháng sinh điều trị bệnh lao.",
        "price": 85000
    },
    {
        "medicine_id": "MED061",
        "name": "Pyrazinamide",
        "description": "Thuốc điều trị bệnh lao.",
        "price": 75000
    },
    {
        "medicine_id": "MED062",
        "name": "Levofloxacin",
        "description": "Kháng sinh điều trị nhiễm trùng đường hô hấp.",
        "price": 95000
    },
    {
        "medicine_id": "MED063",
        "name": "Clarithromycin",
        "description": "Kháng sinh điều trị nhiễm trùng đường hô hấp.",
        "price": 105000
    },
    {
        "medicine_id": "MED064",
        "name": "Duloxetine",
        "description": "Thuốc điều trị lo âu và trầm cảm.",
        "price": 150000
    },
    {
        "medicine_id": "MED065",
        "name": "Allopurinol",
        "description": "Thuốc điều trị bệnh gout.",
        "price": 80000
    },
    {
        "medicine_id": "MED066",
        "name": "Febuxostat",
        "description": "Thuốc điều trị tăng axit uric.",
        "price": 110000
    },
    {
        "medicine_id": "MED067",
        "name": "Colchicine",
        "description": "Thuốc điều trị bệnh gout cấp tính.",
        "price": 70000
    },
    {
        "medicine_id": "MED068",
        "name": "Methotrexate",
        "description": "Thuốc điều trị ung thư và bệnh tự miễn.",
        "price": 220000
    },
    {
        "medicine_id": "MED069",
        "name": "Adalimumab",
        "description": "Thuốc điều trị viêm khớp dạng thấp.",
        "price": 350000
    },
    {
        "medicine_id": "MED070",
        "name": "Etanercept",
        "description": "Thuốc điều trị viêm khớp tự miễn.",
        "price": 330000
    },
    {
        "medicine_id": "MED071",
        "name": "Tacrolimus",
        "description": "Thuốc ức chế miễn dịch sau ghép tạng.",
        "price": 300000
    },
    {
        "medicine_id": "MED072",
        "name": "Cyclosporine",
        "description": "Thuốc ức chế miễn dịch.",
        "price": 280000
    },
    {
        "medicine_id": "MED073",
        "name": "Mycophenolate",
        "description": "Thuốc ức chế miễn dịch.",
        "price": 270000
    },
    {
        "medicine_id": "MED074",
        "name": "Azathioprine",
        "description": "Thuốc điều trị bệnh tự miễn.",
        "price": 160000
    },
    {
        "medicine_id": "MED075",
        "name": "Levocetirizine",
        "description": "Thuốc chống dị ứng.",
        "price": 60000
    },
    {
        "medicine_id": "MED076",
        "name": "Desloratadine",
        "description": "Thuốc chống dị ứng.",
        "price": 75000
    },
    {
        "medicine_id": "MED077",
        "name": "Fexofenadine",
        "description": "Thuốc chống dị ứng.",
        "price": 70000
    },
    {
        "medicine_id": "MED078",
        "name": "Mometasone",
        "description": "Thuốc điều trị viêm mũi dị ứng.",
        "price": 100000
    },
    {
        "medicine_id": "MED079",
        "name": "Loratadine",
        "description": "Thuốc chống dị ứng.",
        "price": 50000
    },
    {
        "medicine_id": "MED080",
        "name": "Olopatadine",
        "description": "Thuốc điều trị viêm kết mạc dị ứng.",
        "price": 90000
    },
    {
        "medicine_id": "MED081",
        "name": "Hydroxyzine",
        "description": "Thuốc an thần và chống dị ứng.",
        "price": 95000
    },
    {
        "medicine_id": "MED082",
        "name": "Phenylephrine",
        "description": "Thuốc giảm sung huyết mũi.",
        "price": 55000
    },
    {
        "medicine_id": "MED083",
        "name": "Pseudoephedrine",
        "description": "Thuốc điều trị nghẹt mũi.",
        "price": 65000
    },
    {
        "medicine_id": "MED084",
        "name": "Tiotropium",
        "description": "Thuốc điều trị bệnh phổi tắc nghẽn mãn tính.",
        "price": 120000
    },
    {
        "medicine_id": "MED085",
        "name": "Budesonide",
        "description": "Thuốc chống viêm đường hô hấp.",
        "price": 110000
    },
    {
        "medicine_id": "MED086",
        "name": "Fluticasone",
        "description": "Thuốc điều trị viêm mũi dị ứng và hen suyễn.",
        "price": 100000
    },
    {
        "medicine_id": "MED087",
        "name": "Methylprednisolone",
        "description": "Thuốc chống viêm.",
        "price": 125000
    },
    {
        "medicine_id": "MED088",
        "name": "Salmeterol",
        "description": "Thuốc giãn phế quản điều trị hen suyễn.",
        "price": 140000
    },
    {
        "medicine_id": "MED089",
        "name": "Formoterol",
        "description": "Thuốc giãn phế quản.",
        "price": 130000
    },
    {
        "medicine_id": "MED090",
        "name": "Beclomethasone",
        "description": "Thuốc điều trị hen suyễn.",
        "price": 115000
    },
    {
        "medicine_id": "MED091",
        "name": "Triamcinolone",
        "description": "Thuốc chống viêm.",
        "price": 95000
    },
    {
        "medicine_id": "MED092",
        "name": "Betahistine",
        "description": "Thuốc điều trị chóng mặt.",
        "price": 85000
    },
    {
        "medicine_id": "MED093",
        "name": "Mefenamic acid",
        "description": "Thuốc giảm đau kháng viêm không steroid.",
        "price": 70000
    },
    {
        "medicine_id": "MED094",
        "name": "Diclofenac",
        "description": "Thuốc giảm đau và chống viêm.",
        "price": 90000
    },
    {
        "medicine_id": "MED095",
        "name": "Ketorolac",
        "description": "Thuốc giảm đau mạnh.",
        "price": 120000
    },
    {
        "medicine_id": "MED096",
        "name": "Meloxicam",
        "description": "Thuốc chống viêm không steroid.",
        "price": 100000
    },
    {
        "medicine_id": "MED097",
        "name": "Celecoxib",
        "description": "Thuốc điều trị viêm khớp và đau.",
        "price": 130000
    },
    {
        "medicine_id": "MED098",
        "name": "Sulfasalazine",
        "description": "Thuốc điều trị viêm khớp dạng thấp.",
        "price": 160000
    },
    {
        "medicine_id": "MED099",
        "name": "Mesalamine",
        "description": "Thuốc điều trị viêm loét đại tràng.",
        "price": 180000
    },
    {
        "medicine_id": "MED100",
        "name": "Oxycodone",
        "description": "Thuốc giảm đau mạnh.",
        "price": 200000
    },
    {
        "medicine_id": "MED101",
        "name": "Hydrocodone",
        "description": "Thuốc giảm đau opioid.",
        "price": 190000
    },
    {
        "medicine_id": "MED102",
        "name": "Gabapentin",
        "description": "Thuốc điều trị đau thần kinh.",
        "price": 150000
    },
    {
        "medicine_id": "MED103",
        "name": "Pregabalin",
        "description": "Thuốc điều trị động kinh và đau thần kinh.",
        "price": 175000
    },
    {
        "medicine_id": "MED104",
        "name": "Topiramate",
        "description": "Thuốc điều trị động kinh và đau đầu migren.",
        "price": 200000
    },
    {
        "medicine_id": "MED105",
        "name": "Valproate",
        "description": "Thuốc điều trị động kinh và rối loạn lưỡng cực.",
        "price": 210000
    },
    {
        "medicine_id": "MED106",
        "name": "Lamotrigine",
        "description": "Thuốc điều trị động kinh và rối loạn tâm trạng.",
        "price": 180000
    },
    {
        "medicine_id": "MED107",
        "name": "Clonazepam",
        "description": "Thuốc an thần và điều trị động kinh.",
        "price": 160000
    },
    {
        "medicine_id": "MED108",
        "name": "Diazepam",
        "description": "Thuốc an thần và giãn cơ.",
        "price": 140000
    },
    {
        "medicine_id": "MED109",
        "name": "Lorazepam",
        "description": "Thuốc điều trị lo âu và động kinh.",
        "price": 145000
    },
    {
        "medicine_id": "MED110",
        "name": "Alprazolam",
        "description": "Thuốc điều trị lo âu và hoảng loạn.",
        "price": 135000
    },
    {
        "medicine_id": "MED111",
        "name": "Buspirone",
        "description": "Thuốc điều trị rối loạn lo âu.",
        "price": 125000
    },
    {
        "medicine_id": "MED112",
        "name": "Propranolol",
        "description": "Thuốc điều trị cao huyết áp và lo âu.",
        "price": 100000
    },
    {
        "medicine_id": "MED113",
        "name": "Atenolol",
        "description": "Thuốc điều trị cao huyết áp và bệnh tim.",
        "price": 110000
    },
    {
        "medicine_id": "MED114",
        "name": "Metoprolol",
        "description": "Thuốc điều trị cao huyết áp và rối loạn nhịp tim.",
        "price": 120000
    },
    {
        "medicine_id": "MED115",
        "name": "Carvedilol",
        "description": "Thuốc điều trị suy tim và cao huyết áp.",
        "price": 130000
    },
    {
        "medicine_id": "MED116",
        "name": "Lisinopril",
        "description": "Thuốc điều trị cao huyết áp và suy tim.",
        "price": 105000
    },
    {
        "medicine_id": "MED117",
        "name": "Ramipril",
        "description": "Thuốc ức chế ACE điều trị cao huyết áp.",
        "price": 115000
    },
    {
        "medicine_id": "MED118",
        "name": "Enalapril",
        "description": "Thuốc điều trị cao huyết áp và suy tim.",
        "price": 110000
    },
    {
        "medicine_id": "MED119",
        "name": "Losartan",
        "description": "Thuốc điều trị cao huyết áp và bảo vệ thận.",
        "price": 125000
    },
    {
        "medicine_id": "MED120",
        "name": "Valsartan",
        "description": "Thuốc điều trị cao huyết áp và suy tim.",
        "price": 130000
    },
    {
        "medicine_id": "MED121",
        "name": "Olmesartan",
        "description": "Thuốc điều trị cao huyết áp.",
        "price": 135000
    },
    {
        "medicine_id": "MED122",
        "name": "Amlodipine",
        "description": "Thuốc điều trị cao huyết áp và đau thắt ngực.",
        "price": 145000
    },
    {
        "medicine_id": "MED123",
        "name": "Nifedipine",
        "description": "Thuốc giãn mạch điều trị cao huyết áp.",
        "price": 140000
    },
    {
        "medicine_id": "MED124",
        "name": "Diltiazem",
        "description": "Thuốc điều trị cao huyết áp và loạn nhịp tim.",
        "price": 150000
    },
    {
        "medicine_id": "MED125",
        "name": "Verapamil",
        "description": "Thuốc điều trị cao huyết áp và rối loạn nhịp tim.",
        "price": 135000
    },
    {
        "medicine_id": "MED126",
        "name": "Furosemide",
        "description": "Thuốc lợi tiểu điều trị phù nề và suy tim.",
        "price": 95000
    },
    {
        "medicine_id": "MED127",
        "name": "Hydrochlorothiazide",
        "description": "Thuốc lợi tiểu điều trị cao huyết áp.",
        "price": 85000
    },
    {
        "medicine_id": "MED128",
        "name": "Spironolactone",
        "description": "Thuốc lợi tiểu giữ kali.",
        "price": 105000
    },
    {
        "medicine_id": "MED129",
        "name": "Torsemide",
        "description": "Thuốc lợi tiểu điều trị suy tim và phù nề.",
        "price": 115000
    },
    {
        "medicine_id": "MED130",
        "name": "Indapamide",
        "description": "Thuốc điều trị cao huyết áp và phù nề.",
        "price": 95000
    },
    {
        "medicine_id": "MED131",
        "name": "Chlorthalidone",
        "description": "Thuốc lợi tiểu điều trị cao huyết áp.",
        "price": 90000
    },
    {
        "medicine_id": "MED132",
        "name": "Amiodarone",
        "description": "Thuốc điều trị loạn nhịp tim.",
        "price": 175000
    },
    {
        "medicine_id": "MED133",
        "name": "Digoxin",
        "description": "Thuốc điều trị suy tim và rối loạn nhịp tim.",
        "price": 165000
    },
    {
        "medicine_id": "MED134",
        "name": "Warfarin",
        "description": "Thuốc chống đông máu.",
        "price": 95000
    },
    {
        "medicine_id": "MED135",
        "name": "Rivaroxaban",
        "description": "Thuốc chống đông máu thế hệ mới.",
        "price": 180000
    },
    {
        "medicine_id": "MED136",
        "name": "Apixaban",
        "description": "Thuốc chống đông máu.",
        "price": 185000
    },
    {
        "medicine_id": "MED137",
        "name": "Dabigatran",
        "description": "Thuốc chống đông máu trực tiếp.",
        "price": 190000
    },
    {
        "medicine_id": "MED138",
        "name": "Clopidogrel",
        "description": "Thuốc chống kết tập tiểu cầu.",
        "price": 110000
    },
    {
        "medicine_id": "MED139",
        "name": "Ticagrelor",
        "description": "Thuốc chống kết tập tiểu cầu mạnh.",
        "price": 150000
    },
    {
        "medicine_id": "MED140",
        "name": "Aspirin",
        "description": "Thuốc chống viêm, giảm đau và chống kết tập tiểu cầu.",
        "price": 80000
    },
    {
        "medicine_id": "MED141",
        "name": "Paracetamol",
        "description": "Thuốc giảm đau và hạ sốt.",
        "price": 50000
    },
    {
        "medicine_id": "MED142",
        "name": "Ibuprofen",
        "description": "Thuốc giảm đau và chống viêm không steroid.",
        "price": 65000
    },
    {
        "medicine_id": "MED143",
        "name": "Naproxen",
        "description": "Thuốc chống viêm và giảm đau.",
        "price": 85000
    },
    {
        "medicine_id": "MED144",
        "name": "Ketoprofen",
        "description": "Thuốc giảm đau và kháng viêm.",
        "price": 90000
    },
    {
        "medicine_id": "MED145",
        "name": "Acyclovir",
        "description": "Thuốc điều trị nhiễm virus herpes.",
        "price": 120000
    },
    {
        "medicine_id": "MED146",
        "name": "Valacyclovir",
        "description": "Thuốc điều trị herpes và zona.",
        "price": 150000
    },
    {
        "medicine_id": "MED147",
        "name": "Oseltamivir",
        "description": "Thuốc điều trị cúm.",
        "price": 130000
    },
    {
        "medicine_id": "MED148",
        "name": "Remdesivir",
        "description": "Thuốc kháng virus điều trị COVID-19.",
        "price": 500000
    },
    {
        "medicine_id": "MED149",
        "name": "Favipiravir",
        "description": "Thuốc điều trị cúm và COVID-19.",
        "price": 450000
    },
    {
        "medicine_id": "MED150",
        "name": "Ivermectin",
        "description": "Thuốc chống ký sinh trùng.",
        "price": 85000
    },
    {
        "medicine_id": "MED151",
        "name": "Metformin",
        "description": "Thuốc điều trị tiểu đường loại 2.",
        "price": 110000
    },
    {
        "medicine_id": "MED152",
        "name": "Glipizide",
        "description": "Thuốc kích thích tuyến tụy sản xuất insulin.",
        "price": 130000
    },
    {
        "medicine_id": "MED153",
        "name": "Glyburide",
        "description": "Thuốc kiểm soát lượng đường trong máu.",
        "price": 120000
    },
    {
        "medicine_id": "MED154",
        "name": "Pioglitazone",
        "description": "Thuốc làm giảm đề kháng insulin.",
        "price": 150000
    },
    {
        "medicine_id": "MED155",
        "name": "Rosiglitazone",
        "description": "Thuốc điều trị tiểu đường loại 2.",
        "price": 170000
    },
    {
        "medicine_id": "MED156",
        "name": "Sitagliptin",
        "description": "Thuốc điều trị tiểu đường bằng cách tăng tiết insulin.",
        "price": 180000
    },
    {
        "medicine_id": "MED157",
        "name": "Linagliptin",
        "description": "Thuốc ức chế DPP-4 điều trị tiểu đường.",
        "price": 185000
    },
    {
        "medicine_id": "MED158",
        "name": "Liraglutide",
        "description": "Thuốc điều trị tiểu đường và giảm cân.",
        "price": 250000
    },
    {
        "medicine_id": "MED159",
        "name": "Dulaglutide",
        "description": "Thuốc điều trị tiểu đường và kiểm soát cân nặng.",
        "price": 260000
    },
    {
        "medicine_id": "MED160",
        "name": "Semaglutide",
        "description": "Thuốc điều trị tiểu đường và giảm béo phì.",
        "price": 270000
    },
    {
        "medicine_id": "MED161",
        "name": "Insulin Aspart",
        "description": "Insulin tác dụng nhanh điều trị tiểu đường.",
        "price": 200000
    },
    {
        "medicine_id": "MED162",
        "name": "Insulin Lispro",
        "description": "Insulin nhanh điều trị tiểu đường.",
        "price": 210000
    },
    {
        "medicine_id": "MED163",
        "name": "Insulin Glargine",
        "description": "Insulin tác dụng dài điều trị tiểu đường.",
        "price": 220000
    },
    {
        "medicine_id": "MED164",
        "name": "Insulin Detemir",
        "description": "Insulin kiểm soát đường huyết dài hạn.",
        "price": 230000
    },
    {
        "medicine_id": "MED165",
        "name": "Insulin Degludec",
        "description": "Insulin tác dụng rất dài điều trị tiểu đường.",
        "price": 240000
    },
    {
        "medicine_id": "MED166",
        "name": "Atorvastatin",
        "description": "Thuốc hạ cholesterol và ngăn ngừa bệnh tim.",
        "price": 120000
    },
    {
        "medicine_id": "MED167",
        "name": "Rosuvastatin",
        "description": "Thuốc hạ cholesterol và bảo vệ tim mạch.",
        "price": 130000
    },
    {
        "medicine_id": "MED168",
        "name": "Simvastatin",
        "description": "Thuốc điều trị cholesterol cao.",
        "price": 115000
    },
    {
        "medicine_id": "MED169",
        "name": "Ezetimibe",
        "description": "Thuốc giảm hấp thu cholesterol.",
        "price": 140000
    },
    {
        "medicine_id": "MED170",
        "name": "Fenofibrate",
        "description": "Thuốc điều trị triglyceride cao.",
        "price": 150000
    },
    {
        "medicine_id": "MED171",
        "name": "Gemfibrozil",
        "description": "Thuốc điều trị cholesterol và triglyceride cao.",
        "price": 130000
    },
    {
        "medicine_id": "MED172",
        "name": "Levothyroxine",
        "description": "Thuốc điều trị suy giáp.",
        "price": 90000
    },
    {
        "medicine_id": "MED173",
        "name": "Liothyronine",
        "description": "Thuốc điều trị suy giáp nhanh.",
        "price": 110000
    },
    {
        "medicine_id": "MED174",
        "name": "Methimazole",
        "description": "Thuốc điều trị cường giáp.",
        "price": 125000
    },
    {
        "medicine_id": "MED175",
        "name": "Propylthiouracil",
        "description": "Thuốc ức chế hormone tuyến giáp.",
        "price": 130000
    },
    {
        "medicine_id": "MED176",
        "name": "Omeprazole",
        "description": "Thuốc điều trị trào ngược dạ dày thực quản.",
        "price": 85000
    },
    {
        "medicine_id": "MED177",
        "name": "Pantoprazole",
        "description": "Thuốc ức chế bơm proton điều trị loét dạ dày.",
        "price": 90000
    },
    {
        "medicine_id": "MED178",
        "name": "Lansoprazole",
        "description": "Thuốc giảm tiết acid dạ dày.",
        "price": 95000
    },
    {
        "medicine_id": "MED179",
        "name": "Esomeprazole",
        "description": "Thuốc ức chế acid dạ dày.",
        "price": 100000
    },
    {
        "medicine_id": "MED180",
        "name": "Ranitidine",
        "description": "Thuốc kháng histamine H2 điều trị loét dạ dày.",
        "price": 75000
    },
    {
        "medicine_id": "MED181",
        "name": "Famotidine",
        "description": "Thuốc điều trị loét dạ dày và trào ngược.",
        "price": 80000
    },
    {
        "medicine_id": "MED182",
        "name": "Metoclopramide",
        "description": "Thuốc điều trị buồn nôn và nôn mửa.",
        "price": 70000
    },
    {
        "medicine_id": "MED183",
        "name": "Domperidone",
        "description": "Thuốc chống buồn nôn và tăng cường tiêu hóa.",
        "price": 65000
    },
    {
        "medicine_id": "MED184",
        "name": "Ondansetron",
        "description": "Thuốc chống nôn mạnh.",
        "price": 120000
    },
    {
        "medicine_id": "MED185",
        "name": "Granisetron",
        "description": "Thuốc chống nôn sau hóa trị.",
        "price": 140000
    },
    {
        "medicine_id": "MED186",
        "name": "Cyclizine",
        "description": "Thuốc điều trị chóng mặt và buồn nôn.",
        "price": 95000
    },
    {
        "medicine_id": "MED187",
        "name": "Meclizine",
        "description": "Thuốc điều trị chóng mặt do say tàu xe.",
        "price": 90000
    },
    {
        "medicine_id": "MED188",
        "name": "Betahistine",
        "description": "Thuốc điều trị chóng mặt do rối loạn tiền đình.",
        "price": 95000
    },
    {
        "medicine_id": "MED189",
        "name": "Flunarizine",
        "description": "Thuốc điều trị đau đầu và chóng mặt.",
        "price": 100000
    },
    {
        "medicine_id": "MED190",
        "name": "Amitriptyline",
        "description": "Thuốc chống trầm cảm ba vòng.",
        "price": 120000
    },
    {
        "medicine_id": "MED191",
        "name": "Nortriptyline",
        "description": "Thuốc chống trầm cảm và đau thần kinh.",
        "price": 110000
    },
    {
        "medicine_id": "MED192",
        "name": "Sertraline",
        "description": "Thuốc chống trầm cảm SSRI.",
        "price": 150000
    },
    {
        "medicine_id": "MED193",
        "name": "Fluoxetine",
        "description": "Thuốc chống trầm cảm và lo âu.",
        "price": 130000
    },
    {
        "medicine_id": "MED194",
        "name": "Escitalopram",
        "description": "Thuốc điều trị trầm cảm và rối loạn lo âu.",
        "price": 170000
    },
    {
        "medicine_id": "MED195",
        "name": "Citalopram",
        "description": "Thuốc chống trầm cảm chọn lọc.",
        "price": 140000
    },
    {
        "medicine_id": "MED196",
        "name": "Duloxetine",
        "description": "Thuốc điều trị trầm cảm và đau mãn tính.",
        "price": 160000
    },
    {
        "medicine_id": "MED197",
        "name": "Venlafaxine",
        "description": "Thuốc chống trầm cảm và lo âu.",
        "price": 180000
    },
    {
        "medicine_id": "MED198",
        "name": "Mirtazapine",
        "description": "Thuốc điều trị trầm cảm và mất ngủ.",
        "price": 170000
    },
    {
        "medicine_id": "MED199",
        "name": "Bupropion",
        "description": "Thuốc chống trầm cảm và hỗ trợ cai thuốc lá.",
        "price": 190000
    },
    {
        "medicine_id": "MED200",
        "name": "Varenicline",
        "description": "Thuốc hỗ trợ cai thuốc lá.",
        "price": 200000
    },
    {
        "medicine_id": "MED201",
        "name": "Nicotine Patch",
        "description": "Miếng dán cung cấp nicotine giúp cai thuốc lá.",
        "price": 210000
    },
    {
        "medicine_id": "MED202",
        "name": "Nicotine Gum",
        "description": "Kẹo cao su chứa nicotine để hỗ trợ cai thuốc lá.",
        "price": 95000
    },
    {
        "medicine_id": "MED203",
        "name": "Aspirin",
        "description": "Thuốc giảm đau, hạ sốt và chống viêm.",
        "price": 50000
    },
    {
        "medicine_id": "MED204",
        "name": "Paracetamol",
        "description": "Thuốc giảm đau và hạ sốt.",
        "price": 30000
    },
    {
        "medicine_id": "MED205",
        "name": "Ibuprofen",
        "description": "Thuốc kháng viêm không steroid (NSAID) giảm đau.",
        "price": 70000
    },
    {
        "medicine_id": "MED206",
        "name": "Naproxen",
        "description": "Thuốc giảm đau và chống viêm.",
        "price": 75000
    },
    {
        "medicine_id": "MED207",
        "name": "Diclofenac",
        "description": "Thuốc kháng viêm điều trị đau xương khớp.",
        "price": 80000
    },
    {
        "medicine_id": "MED208",
        "name": "Celecoxib",
        "description": "Thuốc kháng viêm điều trị viêm khớp.",
        "price": 120000
    },
    {
        "medicine_id": "MED209",
        "name": "Meloxicam",
        "description": "Thuốc điều trị viêm khớp và giảm đau.",
        "price": 90000
    },
    {
        "medicine_id": "MED210",
        "name": "Piroxicam",
        "description": "Thuốc giảm đau và viêm khớp.",
        "price": 95000
    },
    {
        "medicine_id": "MED211",
        "name": "Indomethacin",
        "description": "Thuốc kháng viêm điều trị viêm khớp và đau cơ.",
        "price": 85000
    },
    {
        "medicine_id": "MED212",
        "name": "Tramadol",
        "description": "Thuốc giảm đau trung ương dùng trong các trường hợp đau nặng.",
        "price": 140000
    },
    {
        "medicine_id": "MED213",
        "name": "Morphine",
        "description": "Thuốc giảm đau mạnh cho các bệnh lý nặng.",
        "price": 180000
    },
    {
        "medicine_id": "MED214",
        "name": "Codeine",
        "description": "Thuốc giảm đau vừa phải và giảm ho.",
        "price": 130000
    },
    {
        "medicine_id": "MED215",
        "name": "Oxycodone",
        "description": "Thuốc giảm đau mạnh cho các bệnh lý mãn tính.",
        "price": 200000
    },
    {
        "medicine_id": "MED216",
        "name": "Fentanyl",
        "description": "Thuốc giảm đau opioids mạnh.",
        "price": 250000
    },
    {
        "medicine_id": "MED217",
        "name": "Hydromorphone",
        "description": "Thuốc giảm đau opioids mạnh cho các bệnh lý mãn tính.",
        "price": 220000
    },
    {
        "medicine_id": "MED218",
        "name": "Methadone",
        "description": "Thuốc điều trị nghiện opioids và giảm đau mãn tính.",
        "price": 190000
    },
    {
        "medicine_id": "MED219",
        "name": "Buprenorphine",
        "description": "Thuốc điều trị đau và hỗ trợ cai nghiện opioids.",
        "price": 230000
    },
    {
        "medicine_id": "MED220",
        "name": "Naloxone",
        "description": "Thuốc điều trị quá liều opioids.",
        "price": 170000
    },
    {
        "medicine_id": "MED221",
        "name": "Loperamide",
        "description": "Thuốc điều trị tiêu chảy cấp và mãn tính.",
        "price": 45000
    },
    {
        "medicine_id": "MED222",
        "name": "Bismuth Subsalicylate",
        "description": "Thuốc điều trị tiêu chảy và rối loạn tiêu hóa.",
        "price": 60000
    },
    {
        "medicine_id": "MED223",
        "name": "Diphenoxylate",
        "description": "Thuốc điều trị tiêu chảy mãn tính.",
        "price": 55000
    },
    {
        "medicine_id": "MED224",
        "name": "Racecadotril",
        "description": "Thuốc điều trị tiêu chảy ở trẻ em và người lớn.",
        "price": 50000
    },
    {
        "medicine_id": "MED225",
        "name": "Metronidazole",
        "description": "Thuốc kháng khuẩn điều trị nhiễm trùng do vi khuẩn.",
        "price": 65000
    },
    {
        "medicine_id": "MED226",
        "name": "Tinidazole",
        "description": "Thuốc kháng khuẩn điều trị nhiễm ký sinh trùng.",
        "price": 70000
    },
    {
        "medicine_id": "MED227",
        "name": "Ciprofloxacin",
        "description": "Thuốc kháng sinh điều trị nhiễm khuẩn nặng.",
        "price": 120000
    },
    {
        "medicine_id": "MED228",
        "name": "Levofloxacin",
        "description": "Thuốc kháng sinh điều trị nhiễm khuẩn hô hấp và tiết niệu.",
        "price": 130000
    },
    {
        "medicine_id": "MED229",
        "name": "Moxifloxacin",
        "description": "Thuốc kháng sinh fluoroquinolone mạnh.",
        "price": 140000
    },
    {
        "medicine_id": "MED230",
        "name": "Azithromycin",
        "description": "Thuốc kháng sinh macrolide điều trị nhiễm khuẩn hô hấp.",
        "price": 110000
    },
    {
        "medicine_id": "MED231",
        "name": "Clarithromycin",
        "description": "Thuốc kháng sinh điều trị nhiễm trùng hô hấp và da.",
        "price": 125000
    },
    {
        "medicine_id": "MED232",
        "name": "Doxycycline",
        "description": "Thuốc kháng sinh điều trị nhiễm trùng da và mắt.",
        "price": 115000
    },
    {
        "medicine_id": "MED233",
        "name": "Tetracycline",
        "description": "Thuốc kháng sinh điều trị nhiễm trùng đường hô hấp.",
        "price": 90000
    },
    {
        "medicine_id": "MED234",
        "name": "Amoxicillin",
        "description": "Thuốc kháng sinh điều trị nhiễm khuẩn phổ biến.",
        "price": 80000
    },
    {
        "medicine_id": "MED235",
        "name": "Penicillin",
        "description": "Thuốc kháng sinh điều trị nhiễm trùng do vi khuẩn gram dương.",
        "price": 85000
    },
    {
        "medicine_id": "MED236",
        "name": "Cefalexin",
        "description": "Thuốc kháng sinh cephalosporin điều trị nhiễm khuẩn da.",
        "price": 95000
    },
    {
        "medicine_id": "MED237",
        "name": "Cefuroxime",
        "description": "Thuốc kháng sinh cephalosporin điều trị nhiễm khuẩn hô hấp.",
        "price": 100000
    },
    {
        "medicine_id": "MED238",
        "name": "Cefixime",
        "description": "Thuốc kháng sinh cephalosporin điều trị nhiễm khuẩn đường tiểu.",
        "price": 105000
    },
    {
        "medicine_id": "MED239",
        "name": "Ceftriaxone",
        "description": "Thuốc kháng sinh điều trị nhiễm trùng nặng.",
        "price": 150000
    },
    {
        "medicine_id": "MED240",
        "name": "Cefotaxime",
        "description": "Thuốc kháng sinh cephalosporin điều trị nhiễm trùng toàn thân.",
        "price": 160000
    },
    {
        "medicine_id": "MED241",
        "name": "Vancomycin",
        "description": "Thuốc kháng sinh điều trị nhiễm khuẩn nặng do vi khuẩn gram dương.",
        "price": 170000
    },
    {
        "medicine_id": "MED242",
        "name": "Gentamicin",
        "description": "Thuốc kháng sinh aminoglycoside điều trị nhiễm khuẩn toàn thân.",
        "price": 130000
    },
    {
        "medicine_id": "MED243",
        "name": "Streptomycin",
        "description": "Thuốc kháng sinh điều trị lao và nhiễm khuẩn.",
        "price": 140000
    },
    {
        "medicine_id": "MED244",
        "name": "Neomycin",
        "description": "Thuốc kháng sinh điều trị nhiễm trùng da và tai.",
        "price": 110000
    },
    {
        "medicine_id": "MED245",
        "name": "Erythromycin",
        "description": "Thuốc kháng sinh macrolide điều trị nhiễm trùng da và hô hấp.",
        "price": 100000
    },
    {
        "medicine_id": "MED246",
        "name": "Rifampicin",
        "description": "Thuốc kháng sinh điều trị lao và viêm màng não.",
        "price": 180000
    },
    {
        "medicine_id": "MED247",
        "name": "Isoniazid",
        "description": "Thuốc điều trị lao phối hợp.",
        "price": 90000
    },
    {
        "medicine_id": "MED248",
        "name": "Pyrazinamide",
        "description": "Thuốc điều trị lao cùng với rifampicin và isoniazid.",
        "price": 95000
    },
    {
        "medicine_id": "MED249",
        "name": "Ethambutol",
        "description": "Thuốc điều trị lao phối hợp.",
        "price": 85000
    },
    {
        "medicine_id": "MED250",
        "name": "Atorvastatin",
        "description": "Thuốc giảm cholesterol điều trị mỡ máu cao.",
        "price": 180000
    },
    {
        "medicine_id": "MED251",
        "name": "Rosuvastatin",
        "description": "Thuốc điều trị mỡ máu và ngăn ngừa bệnh tim mạch.",
        "price": 200000
    },
    {
        "medicine_id": "MED252",
        "name": "Simvastatin",
        "description": "Thuốc giảm cholesterol và triglycerides.",
        "price": 150000
    },
    {
        "medicine_id": "MED253",
        "name": "Ezetimibe",
        "description": "Thuốc giảm hấp thu cholesterol.",
        "price": 160000
    },
    {
        "medicine_id": "MED254",
        "name": "Gemfibrozil",
        "description": "Thuốc điều trị mỡ máu cao.",
        "price": 170000
    },
    {
        "medicine_id": "MED255",
        "name": "Fenofibrate",
        "description": "Thuốc điều trị tăng triglycerides máu.",
        "price": 190000
    },
    {
        "medicine_id": "MED256",
        "name": "Omega-3 Acid",
        "description": "Bổ sung axit béo omega-3 hỗ trợ tim mạch.",
        "price": 220000
    },
    {
        "medicine_id": "MED257",
        "name": "Aspirin Low Dose",
        "description": "Thuốc dự phòng bệnh tim mạch và đột quỵ.",
        "price": 50000
    },
    {
        "medicine_id": "MED258",
        "name": "Clopidogrel",
        "description": "Thuốc chống đông máu dự phòng bệnh tim mạch.",
        "price": 130000
    },
    {
        "medicine_id": "MED259",
        "name": "Warfarin",
        "description": "Thuốc chống đông máu dùng trong điều trị và phòng ngừa huyết khối.",
        "price": 110000
    },
    {
        "medicine_id": "MED260",
        "name": "Heparin",
        "description": "Thuốc chống đông máu dùng trong điều trị huyết khối.",
        "price": 200000
    },
    {
        "medicine_id": "MED261",
        "name": "Enoxaparin",
        "description": "Thuốc chống đông máu heparin có trọng lượng phân tử thấp.",
        "price": 250000
    },
    {
        "medicine_id": "MED262",
        "name": "Dabigatran",
        "description": "Thuốc chống đông máu dùng để dự phòng đột quỵ và huyết khối.",
        "price": 300000
    },
    {
        "medicine_id": "MED263",
        "name": "Rivaroxaban",
        "description": "Thuốc chống đông máu dùng để phòng ngừa và điều trị huyết khối.",
        "price": 280000
    },
    {
        "medicine_id": "MED264",
        "name": "Apixaban",
        "description": "Thuốc chống đông máu dùng để phòng ngừa đột quỵ.",
        "price": 270000
    },
    {
        "medicine_id": "MED265",
        "name": "Edoxaban",
        "description": "Thuốc chống đông máu dùng để dự phòng đột quỵ và huyết khối.",
        "price": 290000
    },
    {
        "medicine_id": "MED266",
        "name": "Nitroglycerin",
        "description": "Thuốc giãn mạch điều trị cơn đau thắt ngực.",
        "price": 130000
    },
    {
        "medicine_id": "MED267",
        "name": "Isosorbide Mononitrate",
        "description": "Thuốc giãn mạch điều trị đau thắt ngực mãn tính.",
        "price": 140000
    },
    {
        "medicine_id": "MED268",
        "name": "Diltiazem",
        "description": "Thuốc chẹn kênh calci điều trị tăng huyết áp và đau thắt ngực.",
        "price": 150000
    },
    {
        "medicine_id": "MED269",
        "name": "Verapamil",
        "description": "Thuốc chẹn kênh calci điều trị loạn nhịp tim và tăng huyết áp.",
        "price": 160000
    },
    {
        "medicine_id": "MED270",
        "name": "Amlodipine",
        "description": "Thuốc chẹn kênh calci điều trị tăng huyết áp.",
        "price": 170000
    },
    {
        "medicine_id": "MED271",
        "name": "Nifedipine",
        "description": "Thuốc chẹn kênh calci điều trị tăng huyết áp và cơn đau thắt ngực.",
        "price": 180000
    },
    {
        "medicine_id": "MED272",
        "name": "Losartan",
        "description": "Thuốc điều trị tăng huyết áp và bảo vệ thận.",
        "price": 130000
    },
    {
        "medicine_id": "MED273",
        "name": "Valsartan",
        "description": "Thuốc điều trị tăng huyết áp và suy tim.",
        "price": 140000
    },
    {
        "medicine_id": "MED274",
        "name": "Candesartan",
        "description": "Thuốc điều trị tăng huyết áp và suy tim.",
        "price": 150000
    },
    {
        "medicine_id": "MED275",
        "name": "Olmesartan",
        "description": "Thuốc điều trị tăng huyết áp và bảo vệ thận.",
        "price": 160000
    },
    {
        "medicine_id": "MED276",
        "name": "Irbesartan",
        "description": "Thuốc điều trị tăng huyết áp và bảo vệ thận.",
        "price": 170000
    },
    {
        "medicine_id": "MED277",
        "name": "Telmisartan",
        "description": "Thuốc điều trị tăng huyết áp và suy tim.",
        "price": 180000
    },
    {
        "medicine_id": "MED278",
        "name": "Propranolol",
        "description": "Thuốc chẹn beta điều trị tăng huyết áp và đau nửa đầu.",
        "price": 120000
    },
    {
        "medicine_id": "MED279",
        "name": "Atenolol",
        "description": "Thuốc chẹn beta điều trị tăng huyết áp và nhịp tim nhanh.",
        "price": 110000
    },
    {
        "medicine_id": "MED280",
        "name": "Metoprolol",
        "description": "Thuốc chẹn beta điều trị tăng huyết áp và nhịp tim nhanh.",
        "price": 130000
    },
    {
        "medicine_id": "MED281",
        "name": "Bisoprolol",
        "description": "Thuốc chẹn beta điều trị suy tim và tăng huyết áp.",
        "price": 140000
    },
    {
        "medicine_id": "MED282",
        "name": "Carvedilol",
        "description": "Thuốc chẹn beta điều trị suy tim và tăng huyết áp.",
        "price": 150000
    },
    {
        "medicine_id": "MED283",
        "name": "Labetalol",
        "description": "Thuốc chẹn alpha và beta điều trị tăng huyết áp thai kỳ.",
        "price": 140000
    },
    {
        "medicine_id": "MED284",
        "name": "Nebivolol",
        "description": "Thuốc chẹn beta điều trị tăng huyết áp và suy tim.",
        "price": 160000
    },
    {
        "medicine_id": "MED285",
        "name": "Spironolactone",
        "description": "Thuốc lợi tiểu điều trị tăng huyết áp và suy tim.",
        "price": 120000
    },
    {
        "medicine_id": "MED286",
        "name": "Furosemide",
        "description": "Thuốc lợi tiểu điều trị suy tim và phù nề.",
        "price": 100000
    },
    {
        "medicine_id": "MED287",
        "name": "Hydrochlorothiazide",
        "description": "Thuốc lợi tiểu điều trị tăng huyết áp và suy tim.",
        "price": 95000
    },
    {
        "medicine_id": "MED288",
        "name": "Chlorthalidone",
        "description": "Thuốc lợi tiểu điều trị tăng huyết áp và suy tim.",
        "price": 105000
    },
    {
        "medicine_id": "MED289",
        "name": "Acetazolamide",
        "description": "Thuốc lợi tiểu điều trị phù nề và tăng nhãn áp.",
        "price": 150000
    },
    {
        "medicine_id": "MED290",
        "name": "Mannitol",
        "description": "Thuốc lợi tiểu điều trị phù não và tăng nhãn áp.",
        "price": 160000
    },
    {
        "medicine_id": "MED291",
        "name": "Allopurinol",
        "description": "Thuốc điều trị bệnh gout và sỏi thận.",
        "price": 110000
    },
    {
        "medicine_id": "MED292",
        "name": "Febuxostat",
        "description": "Thuốc điều trị bệnh gout mãn tính.",
        "price": 130000
    },
    {
        "medicine_id": "MED293",
        "name": "Colchicine",
        "description": "Thuốc điều trị cơn gout cấp tính.",
        "price": 90000
    },
    {
        "medicine_id": "MED294",
        "name": "Probenecid",
        "description": "Thuốc tăng bài tiết axit uric điều trị gout mãn tính.",
        "price": 120000
    },
    {
        "medicine_id": "MED295",
        "name": "Sulfinpyrazone",
        "description": "Thuốc điều trị bệnh gout.",
        "price": 110000
    },
    {
        "medicine_id": "MED296",
        "name": "Sodium Bicarbonate",
        "description": "Thuốc điều trị nhiễm toan chuyển hóa và sỏi thận.",
        "price": 80000
    },
    {
        "medicine_id": "MED297",
        "name": "Calcium Carbonate",
        "description": "Thuốc bổ sung canxi điều trị loãng xương.",
        "price": 85000
    },
    {
        "medicine_id": "MED298",
        "name": "Vitamin D3",
        "description": "Thuốc bổ sung vitamin D điều trị loãng xương.",
        "price": 100000
    },
    {
        "medicine_id": "MED299",
        "name": "Calcitriol",
        "description": "Thuốc điều trị loãng xương và bệnh thận.",
        "price": 120000
    },
    {
        "medicine_id": "MED300",
        "name": "Alendronate",
        "description": "Thuốc điều trị loãng xương và giảm nguy cơ gãy xương.",
        "price": 150000
    }
]);

db.Doctors.updateMany(
    {},
    { $set: { salary: 7000000, bonus: 1000000 } }
);

db.Nurses.updateMany(
    {},
    { $set: { salary: 5000000, bonus: 200000 } }
);

db.Visits.updateMany(
    {},
    { $set: { flag: 1} }
);

db.Diseases.insertMany([
    {"disease_id": "DIS051", "name": "Bệnh cúm", "description": "Bệnh do virus cúm gây ra, gây sốt, ho, đau cơ."},
    {
        "disease_id": "DIS052",
        "name": "Cảm lạnh",
        "description": "Bệnh nhiễm trùng nhẹ ở đường hô hấp, thường do virus."
    },
    {"disease_id": "DIS053", "name": "Viêm phổi", "description": "Nhiễm trùng ở phổi, gây khó thở và ho."},
    {"disease_id": "DIS054", "name": "Hen suyễn", "description": "Bệnh mãn tính ảnh hưởng đến đường thở, gây khó thở."},
    {
        "disease_id": "DIS055",
        "name": "Viêm gan B",
        "description": "Nhiễm virus viêm gan B, có thể dẫn đến bệnh gan mãn tính."
    },
    {"disease_id": "DIS056", "name": "Đau dạ dày", "description": "Cảm giác đau hoặc khó chịu ở vùng dạ dày."},
    {"disease_id": "DIS057", "name": "Tiểu đường", "description": "Bệnh chuyển hóa gây ra lượng đường trong máu cao."},
    {
        "disease_id": "DIS058",
        "name": "Huyết áp cao",
        "description": "Tình trạng sức khỏe mãn tính có thể gây ra các vấn đề tim mạch."
    },
    {"disease_id": "DIS059", "name": "Viêm khớp", "description": "Bệnh viêm các khớp, gây đau và cứng khớp."},
    {
        "disease_id": "DIS060",
        "name": "Bệnh tim",
        "description": "Các vấn đề về tim mạch, có thể gây đau ngực hoặc khó thở."
    },
    {
        "disease_id": "DIS061",
        "name": "Suy tim",
        "description": "Tình trạng khi tim không bơm đủ máu để đáp ứng nhu cầu cơ thể."
    },
    {"disease_id": "DIS062", "name": "Bệnh trĩ", "description": "Sưng và viêm ở tĩnh mạch hậu môn."},
    {"disease_id": "DIS063", "name": "Viêm loét dạ dày", "description": "Sự xuất hiện của các vết loét trong dạ dày."},
    {"disease_id": "DIS064", "name": "Bệnh gút", "description": "Tình trạng viêm khớp do tăng axit uric trong máu."},
    {
        "disease_id": "DIS065",
        "name": "Bệnh tiểu đường type 1",
        "description": "Bệnh tự miễn dịch ảnh hưởng đến insulin."
    },
    {
        "disease_id": "DIS066",
        "name": "Bệnh tiểu đường type 2",
        "description": "Bệnh liên quan đến insulin và kháng insulin."
    },
    {"disease_id": "DIS067", "name": "Bệnh động kinh", "description": "Rối loạn thần kinh gây ra cơn co giật."},
    {"disease_id": "DIS068", "name": "Bệnh Alzheimer", "description": "Bệnh thoái hóa thần kinh dẫn đến mất trí nhớ."},
    {"disease_id": "DIS069", "name": "Bệnh Parkinson", "description": "Rối loạn thần kinh ảnh hưởng đến chuyển động."},
    {
        "disease_id": "DIS070",
        "name": "Bệnh trầm cảm",
        "description": "Rối loạn tâm thần có triệu chứng buồn bã, mệt mỏi."
    },
    {"disease_id": "DIS071", "name": "Rối loạn lo âu", "description": "Bệnh tâm thần gây ra lo âu và căng thẳng."},
    {
        "disease_id": "DIS072",
        "name": "Bệnh tự kỷ",
        "description": "Rối loạn phát triển ảnh hưởng đến giao tiếp và hành vi."
    },
    {"disease_id": "DIS073", "name": "Bệnh béo phì", "description": "Tình trạng thừa cân ảnh hưởng đến sức khỏe."},
    {"disease_id": "DIS074", "name": "Bệnh suyễn", "description": "Rối loạn hô hấp mãn tính gây khó thở."},
    {
        "disease_id": "DIS075",
        "name": "Bệnh viêm phổi tắc nghẽn mạn tính",
        "description": "Bệnh phổi mãn tính gây khó thở."
    },
    {"disease_id": "DIS076", "name": "Bệnh lao", "description": "Nhiễm trùng do vi khuẩn lao gây ra."},
    {"disease_id": "DIS077", "name": "Bệnh viêm tụy", "description": "Viêm tụy gây ra đau bụng và khó tiêu."},
    {"disease_id": "DIS078", "name": "Bệnh celiac", "description": "Bệnh tự miễn dịch liên quan đến gluten."},
    {"disease_id": "DIS079", "name": "Bệnh viêm ruột", "description": "Viêm các cơ quan trong hệ tiêu hóa."},
    {"disease_id": "DIS080", "name": "Bệnh sỏi thận", "description": "Sự hình thành sỏi trong thận."},
    {"disease_id": "DIS081", "name": "Bệnh sỏi mật", "description": "Sự hình thành sỏi trong túi mật."},
    {
        "disease_id": "DIS082",
        "name": "Bệnh nhiễm trùng đường tiểu",
        "description": "Nhiễm trùng ảnh hưởng đến đường tiểu."
    },
    {"disease_id": "DIS083", "name": "Bệnh viêm xoang", "description": "Viêm các xoang trong đầu."},
    {"disease_id": "DIS084", "name": "Bệnh hen suyễn", "description": "Bệnh hô hấp mãn tính gây khó thở."},
    {"disease_id": "DIS085", "name": "Bệnh dị ứng", "description": "Phản ứng quá mức của hệ miễn dịch."},
    {"disease_id": "DIS086", "name": "Bệnh thủy đậu", "description": "Bệnh truyền nhiễm do virus thủy đậu gây ra."},
    {"disease_id": "DIS087", "name": "Bệnh sởi", "description": "Bệnh truyền nhiễm do virus sởi gây ra."},
    {"disease_id": "DIS088", "name": "Bệnh quai bị", "description": "Bệnh truyền nhiễm do virus quai bị gây ra."},
    {"disease_id": "DIS089", "name": "Bệnh viêm gan A", "description": "Nhiễm virus viêm gan A."},
    {"disease_id": "DIS090", "name": "Bệnh dạ dày", "description": "Các vấn đề về dạ dày gây đau bụng."},
    {
        "disease_id": "DIS091",
        "name": "Bệnh tiểu đường gestational",
        "description": "Tiểu đường phát sinh trong thời kỳ mang thai."
    },
    {"disease_id": "DIS092", "name": "Bệnh hô hấp", "description": "Các bệnh liên quan đến hệ hô hấp."},
    {"disease_id": "DIS093", "name": "Bệnh đau đầu", "description": "Cảm giác đau hoặc khó chịu ở đầu."},
    {"disease_id": "DIS094", "name": "Bệnh thần kinh", "description": "Các rối loạn liên quan đến hệ thần kinh."},
    {"disease_id": "DIS095", "name": "Bệnh hoại tử", "description": "Tình trạng chết tế bào mô."},
    {"disease_id": "DIS096", "name": "Bệnh loãng xương", "description": "Mật độ xương thấp, dễ gãy xương."},
    {"disease_id": "DIS097", "name": "Bệnh nhồi máu cơ tim", "description": "Tình trạng tim không nhận đủ máu."},
    {"disease_id": "DIS098", "name": "Bệnh động mạch vành", "description": "Hẹp động mạch cung cấp máu cho tim."},
    {
        "disease_id": "DIS099",
        "name": "Bệnh phổi tắc nghẽn mãn tính",
        "description": "Bệnh phổi mãn tính ảnh hưởng đến hô hấp."
    },
    {"disease_id": "DIS100", "name": "Bệnh viêm khớp dạng thấp", "description": "Bệnh viêm khớp mãn tính."},
]);







