puts "Generating seeds..."

School.find_or_create_by(
  {name: 'SMG',
  address: 'Sofia', 
  phone_number: '0885955926'
  }
)

users_seed = [
  {name: 'Kristiyan Tsvetanov',
  email: 'kris@example.com', password: 'password',
  password_confirmation: 'password', admin: true},
  {name: 'Nikola Jichev',
  email: 'niko@example.com', password: 'password',
  password_confirmation: 'password', admin: true},
  {name: 'Ivancho',
  email: 'ivancho@example.com', password: 'password',
  password_confirmation: 'password', admin: false,
  school_id: 1, role: 0, group_id: 1, number: 1, address: "Sofia"},
  {name: 'Alexander',
  email: 'alex@example.com', password: 'password',
  password_confirmation: 'password', admin: false,
  school_id: 1, role: 0, group_id: 1, number: 2, address: "Sofia"},
  {name: 'Angel',
  email: 'acho@example.com', password: 'password',
  password_confirmation: 'password', admin: false,
  school_id: 1, role: 0, group_id: 1, number: 3, address: "Sofia"},
  {name: 'Dimitar',
  email: 'mitko@example.com', password: 'password',
  password_confirmation: 'password', admin: false,
  school_id: 1, role: 0, group_id: 1, number: 4, address: "Sofia"},
  {name: 'Iva',
  email: 'iva@example.com', password: 'password',
  password_confirmation: 'password', admin: false,
  school_id: 1, role: 0, group_id: 1, number: 5, address: "Sofia"},
  {name: 'Marta',
  email: 'marta@example.com', password: 'password',
  password_confirmation: 'password', admin: false,
  school_id: 1, role: 0, group_id: 1, number: 6, address: "Sofia"},
  {name: 'Antony Stoyanov',
  email: 'tonkata@example.com', password: 'password',
  password_confirmation: 'password', admin: false,
  school_id: 1, role: 2},
  {name: 'Veliko Kolev',
  email: 'kolev@example.com', password: 'password',
  password_confirmation: 'password', admin: false,
  school_id: 1, role: 1}
]

users_seed.each do |user_params|
  User.create(user_params)
end

Subject.find_or_create_by(
  {
    name: 'Mathematics',
    grade: 10
  }
)
Subject.find_or_create_by(
  {
    name: 'Informatics',
    grade: 10
  }
)
Subject.find_or_create_by(
  {
    name: 'Biology',
    grade: 10
  }
)
Group.find_or_create_by(
  {
    grade: 10,
    name: 'a',
    school_id: 1,
    user_id: 10
  }
)
Course.find_or_create_by(
  {
    subject_id: 1,
    school_id: 1,
    year: 2017,
    grade: 10,
    group_id: 1,
    user_id: 10,
    study_hours: 120
  }
)
Course.find_or_create_by(
  {
    subject_id: 2,
    school_id: 1,
    year: 2017,
    grade: 10,
    group_id: 1,
    user_id: 10,
    study_hours: 50
  }
)
Course.find_or_create_by(
  {
    subject_id: 3,
    school_id: 1,
    year: 2017,
    grade: 10,
    group_id: 1,
    user_id: 10,
    study_hours: 100
  }
)
Timetable.find_or_create_by(
  {
    school_id: 1
  }
)
Slot.find_or_create_by(
  {
    timetable_id: 1,
    start_time: 26700,
    end_time: 29400
  }
)
Slot.find_or_create_by(
  {
    timetable_id: 1,
    start_time: 26700,
    end_time: 29400
  }
)
Slot.find_or_create_by(
  {
    timetable_id: 1,
    start_time: 30000,
    end_time: 32700
  }
)
Slot.find_or_create_by(
  {
    timetable_id: 1,
    start_time: 33900,
    end_time: 36600
  }
)
Slot.find_or_create_by(
  {
    timetable_id: 1,
    start_time: 37200,
    end_time: 39900
  }
)
Slot.find_or_create_by(
  {
    timetable_id: 1,
    start_time: 40500,
    end_time: 43200
  }
)
Slot.find_or_create_by(
  {
    timetable_id: 1,
    start_time: 43800,
    end_time: 46500
  }
)
Slot.find_or_create_by(
  {
    timetable_id: 1,
    start_time: 47100,
    end_time: 49800
  }
)
Slot.find_or_create_by(
  {
    timetable_id: 1,
    start_time: 51000,
    end_time: 53700
  }
)
Slot.find_or_create_by(
  {
    timetable_id: 1,
    start_time: 54300,
    end_time: 57000
  }
)
Slot.find_or_create_by(
  {
    timetable_id: 1,
    start_time: 57600,
    end_time: 60300
  }
)
Slot.find_or_create_by(
  {
    timetable_id: 1,
    start_time: 60900,
    end_time: 63600
  }
)
Slot.find_or_create_by(
  {
    timetable_id: 1,
    start_time: 63900,
    end_time: 66600
  }
)
Slot.find_or_create_by(
  {
    timetable_id: 1,
    start_time: 67200,
    end_time: 69900
  }
)

puts 'Done ...'
