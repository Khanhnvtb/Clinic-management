-- Liệt kê danh sách các loại bệnh được các bệnh nhân mắc phải trong một tháng cho trước, các bệnh được
-- sắp xếp theo thứ tự số bệnh nhân đến khám giảm dần. Lưu ý, một bệnh nhân có thể đến khám/chữa một bệnh
-- nào đó nhiều lần trong tháng nhưng cũng chỉ được tính là mắc một lần nếu như các lần khám đó là liên tiếp nhau.
-- Trong CSDL phải thể hiện được là một bệnh nhân có thể mắc lại bệnh nào đó nhiều lần
-- (chữa khỏi, một thời gian sau lại mắc bệnh lại), khi đó sẽ được tính là mắc nhiều lần.

db.MedicalHistory.aggregate([
    {
        $match: { months: '062024' } // Lọc bản ghi trong MedicalHistory có months chứa '082024'
    },
    {
        $group: {
            _id: "$disease_id", // Nhóm theo disease_id
            count: { $sum: 1 } // Đếm số lần mắc bệnh
        }
    },
    {
        $lookup: {
            from: "Diseases", // Tên collection Diseases
            localField: "_id", // Trường disease_id từ MedicalHistory
            foreignField: "disease_id", // Trường disease_id trong Diseases
            as: "disease_info" // Tên trường chứa thông tin bệnh
        }
    },
    {
        $unwind: "$disease_info" // Tách thông tin bệnh ra từng bản ghi
    },
    {
        $project: {
            "Tên bệnh": "$disease_info.name", // Đổi tên trường thành "tên_bệnh" mà không có {}
            "Số lần mắc bệnh": "$count", // Đổi tên trường thành "số_lần_mắc_bệnh" mà không có {}
            _id: 0 // Bỏ trường _id
        }
    },
    {
        $sort: { "Số lần mắc bệnh": -1 } // Sắp xếp theo số lần mắc bệnh giảm dần
    }
]);

-- Số lần mắc bệnh, Tên bệnh
-- 3,Tiểu đường
-- 2,Bệnh sa sút trí tuệ
-- 2,Bệnh hen suyễn dị ứng
-- 1,Bệnh thiếu máu
-- 1,Cúm gia cầm
-- 1,Bệnh viêm ruột
-- 1,Nhiễm khuẩn
-- 1,Bệnh hen phế quản
-- 1,Bệnh loãng xương
-- 1,Bệnh sốt xuất huyết
-- 1,Viêm phổi do vi khuẩn
-- 1,Cảm cúm
-- 1,Hen suyễn
-- 1,Bệnh Parkinson
-- 1,Viêm khớp
-- 1,Bệnh khớp
-- 1,Viêm da
-- 1,Bệnh nhiễm trùng huyết
-- 1,Bệnh động kinh
-- 1,Bệnh tiểu đường loại 2

-- Tính lương của các Bác sỹ và y tá trong tháng tính đến thời điểm hiện tại, hoặc một tháng cụ thể nào đó với
-- cách tính như sau: lương cơ bản cho BS là 7tr, Y tá là 5tr. Cứ mỗi bệnh nhân đến khám và chữa khỏi một bệnh
-- (kết thúc một chuỗi khám/chữa bệnh nhiều lần liên tiếp cho bệnh đó) bởi một bác sỹ thì bác sỹ đó được cộng thêm 1tr.
-- Mỗi lần một y tá thực hiện hỗ trợ một bệnh nhân trong một lần đến khám/chữa bệnh thì được cộng thêm 200 nghìn đồng.

const inputDate = new Date("2024-06-30"); // Ngày nhập vào từ bàn phím
let startDate = new Date(inputDate.getFullYear(), inputDate.getMonth(), 1); // Ngày đầu tháng hiện tại
const endDate = new Date(inputDate.getTime() - 30 * 24 * 60 * 60 * 1000); // Ngày nhập vào trừ 30 ngày

// Kiểm tra nếu khoảng cách giữa inputDate và startDate nhỏ hơn 30 ngày
if ((inputDate - startDate) < 30 * 24 * 60 * 60 * 1000) {
    startDate = endDate; // Nếu đúng, gán startDate bằng endDate
}

db.Doctors.aggregate([
    {
        $lookup: {
            from: "MedicalHistory",
            localField: "doctor_id",
            foreignField: "doctor_id",
            as: "medical_histories"
        }
    },
    {
        $addFields: {
            visit_id: {
                $map: {
                    input: "$medical_histories",
                    as: "history",
                    in: { $arrayElemAt: ["$$history.visit_ids", -1] } // Lấy visit_id cuối cùng từ visit_ids
                }
            }
        }
    },
    {
        $lookup: {
            from: "Visits",
            localField: "visit_id", // Dùng visit_id cuối cùng để join với Collection Visits
            foreignField: "visit_id",
            as: "visits"
        }
    },
    {
        $addFields: {
            cnt: {
                $size: {
                    $filter: {
                        input: "$visits",
                        as: "visit",
                        cond: {
                            $and: [
                                { $gte: ["$$visit.visit_date", startDate] }, // Kiểm tra visit_date >= startDate
                                { $lt: ["$$visit.visit_date", endDate] } // Kiểm tra visit_date < endDate
                            ]
                        }
                    }
                }
            }
        }
    },
    {
        $group: {
            _id: "$doctor_id", // Nhóm theo doctor_id
            name: { $first: "$name" }, // Hiển thị name của doctor
            salary: { $first: "$salary" }, // Hiển thị salary đầu tiên
            bonus: { $first: "$bonus" }, // Lấy bonus đầu tiên
            cnt: { $sum: "$cnt" } // Tính tổng cnt (số lần ghi nhận bonus)
        }
    },
    {
        $project: {
            _id: 0, // Bỏ trường _id
            "Tên bác sĩ": "$name", // Hiển thị trường name
            "Mã bác sĩ": "$_id", // Hiển thị doctor_id
            "Lương cơ bản": "$salary", // Hiển thị trường salary
            "Tổng thu nhập": {
                $add: [
                    "$salary",
                    { $multiply: ["$bonus", "$cnt"] } // Tính tổng thu nhập
                ]
            },
            "Hệ số thưởng": "$bonus", // Hiển thị bonus của Doctors
            "Số bệnh nhân khỏi bệnh": "$cnt" // Hiển thị số bệnh nhân khỏi bệnh (ghi nhận bonus)
        }
    }
]);

-- Hệ số thưởng, Lương cơ bản, Mã bác sĩ, Số bệnh nhân khỏi bệnh, Tên bác sĩ, Tổng thu nhập
-- 1000000,7000000,D007,2,Dr. Do Van G,9000000
-- 1000000,7000000,D013,0,Dr. Tran Van M,7000000
-- 1000000,7000000,D006,1,Dr. Hoang Van F,8000000
-- 1000000,7000000,D003,2,Dr. Le Van C,9000000
-- 1000000,7000000,D001,2,Dr. Nguyen Van A,9000000
-- 1000000,7000000,D010,1,Dr. Nguyen Thi J,8000000
-- 1000000,7000000,D008,0,Dr. Tran Thi H,7000000
-- 1000000,7000000,D014,1,Dr. Nguyen Thi N,8000000
-- 1000000,7000000,D004,3,Dr. Pham Thi D,10000000
-- 1000000,7000000,D009,5,Dr. Phan Van I,12000000
-- 1000000,7000000,D012,3,Dr. Pham Thi L,10000000
-- 1000000,7000000,D002,1,Dr. Tran Thi B,8000000
-- 1000000,7000000,D005,2,Dr. Nguyen Van E,9000000
-- 1000000,7000000,D011,0,Dr. Le Van K,7000000
-- 1000000,7000000,D015,0,Dr. Hoang Van O,7000000

const inputDate = new Date("2024-06-30"); // Ngày nhập vào từ bàn phím
let startDate = new Date(inputDate.getFullYear(), inputDate.getMonth(), 1); // Ngày đầu tháng hiện tại
const endDate = new Date(inputDate.getTime() - 30 * 24 * 60 * 60 * 1000); // Ngày nhập vào trừ 30 ngày

// Kiểm tra nếu khoảng cách giữa inputDate và startDate nhỏ hơn 30 ngày
if ((inputDate - startDate) < 30 * 24 * 60 * 60 * 1000) {
    startDate = endDate; // Nếu đúng, gán startDate bằng endDate
}

db.Nurses.aggregate([
    {
        $lookup: {
            from: "MedicalHistory",
            localField: "nurse_id", // Trường nurse_id trong Nurses
            foreignField: "nurse_ids", // Trường nurse_ids trong MedicalHistory
            as: "medical_histories" // Kết quả được lưu vào medical_histories
        }
    },
    {
        $addFields: {
            visit_id: {
                $map: {
                    input: "$medical_histories", // Lấy từng medical_history
                    as: "history",
                    in: { $arrayElemAt: ["$$history.visit_ids", -1] } // Lấy visit_id cuối cùng từ visit_ids
                }
            }
        }
    },
    {
        $lookup: {
            from: "Visits",
            localField: "visit_id", // Dùng visit_id cuối cùng để join với collection Visits
            foreignField: "visit_id",
            as: "visits" // Kết quả được lưu vào visits
        }
    },
    {
        $addFields: {
            cnt: {
                $size: {
                    $filter: {
                        input: "$visits", // Lọc visits
                        as: "visit",
                        cond: {
                            $and: [
                                { $gte: ["$$visit.visit_date", startDate] }, // Kiểm tra visit_date >= startDate
                                { $lt: ["$$visit.visit_date", inputDate] } // Kiểm tra visit_date < inputDate
                            ]
                        }
                    }
                }
            }
        }
    },
    {
        $group: {
            _id: "$nurse_id", // Nhóm theo nurse_id
            name: { $first: "$name" }, // Hiển thị tên y tá
            salary: { $first: "$salary" }, // Hiển thị lương y tá
            bonus: { $first: "$bonus" }, // Hiển thị hệ số thưởng
            cnt: { $sum: "$cnt" } // Tính tổng cnt (số lần ghi nhận bonus)
        }
    },
    {
        $project: {
            _id: 0, // Bỏ trường _id
            "Tên điều dưỡng": "$name", // Hiển thị tên y tá
            "Mã điều dưỡng": "$_id", // Hiển thị mã y tá
            "Lương cơ bản": "$salary", // Hiển thị lương cơ bản
            "Tổng thu nhập": {
                $add: [
                    "$salary",
                    { $multiply: ["$bonus", "$cnt"] } // Tính tổng thu nhập (lương + thưởng)
                ]
            },
            "Hệ số thưởng": "$bonus", // Hiển thị hệ số thưởng của y tá
            "Số bệnh nhân khỏi bệnh": "$cnt" // Hiển thị số bệnh nhân đã khỏi
        }
    }
]);


-- Hệ số thưởng, Lương cơ bản, Mã y tá, Số bệnh nhân khỏi bệnh, Tên y tá, Tổng thu nhập
-- 200000,5000000,N012,0,Nurse 12,5000000
-- 200000,5000000,N010,0,Nurse 10,5000000
-- 200000,5000000,N009,0,Nurse 9,5000000
-- 200000,5000000,N006,0,Nurse 6,5000000
-- 200000,5000000,N005,0,Nurse 5,5000000
-- 200000,5000000,N011,0,Nurse 11,5000000
-- 200000,5000000,N004,0,Nurse 4,5000000
-- 200000,5000000,N002,0,Nurse 2,5000000
-- 200000,5000000,N003,0,Nurse 3,5000000
-- 200000,5000000,N001,0,Nurse 1,5000000
-- 200000,5000000,N008,0,Nurse 8,5000000
-- 200000,5000000,N015,0,Nurse 15,5000000
-- 200000,5000000,N013,0,Nurse 13,5000000
-- 200000,5000000,N007,0,Nurse 7,5000000
-- 200000,5000000,N014,0,Nurse 14,5000000


-- Hiển thị thông tin của một bệnh nhân nào đó cùng với tất cả các thông tin khám chữa bệnh của họ từ trước đến nay.
-- Thông tin về tình trạng bệnh của họ tại thời điểm hiện tại (mắc những bệnh gì, khám lần thứ mấy cho mỗi bệnh,…).

-- Hiển thị thông tin cá nhân bệnh nhân
db.Patients.findOne({patient_id:'P001'})

-- Kết quả
[
  {
    "_id": {"$oid": "66f8b170cde56e632d063f8e"},
    "CID": "123456001",
    "address": "Địa chỉ 1",
    "date_of_birth": {"$date": "1990-01-01T00:00:00.000Z"},
    "name": "Bệnh nhân 1",
    "patient_id": "P001",
    "phone_number": "01234567801"
  }
]

-- Hiển thị lịch sử khám bệnh
db.Visits.aggregate([
    {
        $lookup: {
            from: "MedicalHistory", // Kết nối với collection MedicalHistory
            localField: "visit_id", // Trường visit_id trong Visits
            foreignField: "visit_ids", // Trường visit_ids trong MedicalHistory
            as: "medical_history" // Kết quả được lưu vào medical_history
        }
    },
    {
        $unwind: "$medical_history" // Giải nén medical_history để truy cập từng bản ghi
    },
    {
        $match: { // Điều kiện lọc theo patient_id
            patient_id: 'P045' // Chỉ lấy các bản ghi có patient_id bằng 'P001'
        }
    },
    {
        $lookup: {
            from: "Diseases", // Kết nối với collection Diseases
            localField: "medical_history.disease_id", // Trường disease_id trong MedicalHistory
            foreignField: "disease_id", // Trường disease_id trong Diseases
            as: "disease_info" // Kết quả được lưu vào disease_info
        }
    },
    {
        $unwind: "$disease_info" // Giải nén disease_info để truy cập từng bản ghi
    },
    {
        $project: {
            _id: 0, // Bỏ trường _id
            "patient_id": "$patient_id", // Hiển thị patient_id
            "Disease Name": "$disease_info.name", // Hiển thị tên bệnh từ collection Diseases
            "Visit Date": "$visit_date", // Hiển thị ngày khám
            "Diagnose": "$diagnose" // Hiển thị chẩn đoán
        }
    },
    {
        $sort: { "Visit Date": 1 } // Sắp xếp theo visit_date theo thứ tự tăng dần
    }
]);

-- Kết quả
[
  {
    "Diagnose": "",
    "Disease Name": "Đau đầu migren",
    "Visit Date": {"$date": "2024-01-22T00:00:00.000Z"},
    "patient_id": "P045"
  },
  {
    "Diagnose": "",
    "Disease Name": "Viêm da",
    "Visit Date": {"$date": "2024-05-10T00:00:00.000Z"},
    "patient_id": "P045"
  },
  {
    "Diagnose": "",
    "Disease Name": "Viêm da",
    "Visit Date": {"$date": "2024-06-01T00:00:00.000Z"},
    "patient_id": "P045"
  },
  {
    "Diagnose": "",
    "Disease Name": "Bệnh loãng xương",
    "Visit Date": {"$date": "2024-06-09T00:00:00.000Z"},
    "patient_id": "P045"
  },
  {
    "Diagnose": "",
    "Disease Name": "Viêm da",
    "Visit Date": {"$date": "2024-06-16T00:00:00.000Z"},
    "patient_id": "P045"
  }
]

-- Bệnh và lịch sử khám gần nhất
db.MedicalHistory.aggregate([
    {
        $match: {
            patient_id: 'P045' // Lọc theo patient_id
        }
    },
    {
        $unwind: "$visit_ids" // Tách các visit_ids thành các bản ghi riêng biệt
    },
    {
        $lookup: {
            from: "Visits",            // Kết nối với collection Visits
            localField: "visit_ids",   // Trường visit_ids trong MedicalHistory
            foreignField: "visit_id",   // Trường visit_id trong Visits
            as: "visit_info"           // Tạo trường mới để chứa thông tin visit
        }
    },
    {
        $unwind: "$visit_info" // Tách các visit_info thành các bản ghi riêng biệt
    },
    {
        $lookup: {
            from: "Diseases",             // Kết nối với collection Diseases
            localField: "disease_id",     // Trường disease_id trong MedicalHistory
            foreignField: "disease_id",    // Trường disease_id trong Diseases
            as: "disease_info"            // Tạo trường mới để chứa thông tin bệnh
        }
    },
    {
        $unwind: "$disease_info" // Tách các disease_info thành các bản ghi riêng biệt
    },
    {
        $group: {
            _id: "$disease_info.name", // Nhóm theo tên bệnh
            latestVisitDate: { $max: "$visit_info.visit_date" }, // Lấy ngày khám gần nhất
            totalVisits: { $sum: 1 } // Đếm tổng số lần khám
        }
    },
    {
        $sort: {
            latestVisitDate: -1 // Sắp xếp theo ngày khám gần nhất
        }
    },
    {
        $limit: 1 // Giới hạn kết quả chỉ lấy bệnh gần nhất
    }
]);


-- Kết quả
[
  {
    "_id": "Viêm da",
    "latestVisitDate": {"$date": "2024-06-16T00:00:00.000Z"},
    "totalVisits": 3
  }
]

-- Tính Doanh thu của Phòng khám dựa trên số tiền khám/chữa bệnh của các bệnh nhân và số tiền bán thuốc trên các đơn thuốc.
const endDate = new Date("2024-06-30"); // Ngày nhập vào từ bàn phím
const startDate = new Date(inputDate.getFullYear(), inputDate.getMonth() + 1, 1);

db.Visits.aggregate([
    {
        $match: {
            visit_date: {
                $gte: startDate, // Kiểm tra visit_date >= ngày đầu tháng
                $lt: endDate // Kiểm tra visit_date < ngày đầu tháng tiếp theo
            }
        }
    },
    {
        $unwind: "$bill_ids" // Tách các bill_ids thành các bản ghi riêng biệt
    },
    {
        $lookup: {
            from: "Bills", // Kết nối với collection Bills
            localField: "bill_ids", // Trường bill_ids trong Visits
            foreignField: "bill_id", // Trường bill_id trong Bills
            as: "bill_info" // Tạo trường bill_info
        }
    },
    {
        $unwind: "$bill_info" // Tách các bill_info thành các bản ghi riêng biệt
    },
    {
        $group: {
            _id: null, // Không nhóm theo trường nào
            totalRevenue: { $sum: "$bill_info.total" } // Tính tổng doanh thu từ total
        }
    },
    {
        $project: {
            _id: 0, // Bỏ trường _id
            totalRevenue: "$totalRevenue" // Hiển thị tổng doanh thu
        }
    }
]);

-- Kết quả
-- 258050000