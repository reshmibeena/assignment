class Exam < ApplicationRecord
  belongs_to :student
  validates_presence_of :name
end
