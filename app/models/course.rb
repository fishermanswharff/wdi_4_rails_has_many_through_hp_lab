# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  teacher    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Course < ActiveRecord::Base
  has_many :schedules
  has_many :students, :through => :schedules
  accepts_nested_attributes_for :students
  accepts_nested_attributes_for :schedules
end
