class Student < ApplicationRecord
  belongs_to :school  # There is a school_id int key in students table

  validates_presence_of :name, :student_number
  validates :student_number, uniqueness: {message: "Student Id Already Exists.."}
end
