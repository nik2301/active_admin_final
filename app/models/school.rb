class School < ApplicationRecord
  has_many :students

  validates_presence_of :name
  validates :name, uniqueness: { message: "School Already Registered" }
end
