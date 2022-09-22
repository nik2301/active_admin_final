class School < ApplicationRecord
  validates_presence_of :name
  validates :name, uniqueness: { message: "School Already Registered" }
end
