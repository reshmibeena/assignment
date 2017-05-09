class Student < ApplicationRecord
	has_many :exams
	validates_presence_of :name
	before_create :check_date
	private
		def check_date
			puts "-----------------------"

			self.name = name.capitalize
		end
end
