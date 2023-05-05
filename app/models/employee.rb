class Employee < ApplicationRecord
	has_one :salary
	belongs_to :department, optional: true
	has_many :titles
	belongs_to :dept_manager, optional: true
	has_many :dept_emp
end
