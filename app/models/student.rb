class Student < ApplicationRecord
  validates_presence_of :name, :student_number
  validates :student_number, uniqueness: {message: "Student Id Already Exists.."}
end
