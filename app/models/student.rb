# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  age        :string(255)
#  house_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Student < ActiveRecord::Base
  belongs_to :house
  has_many :schedules
  has_many :courses, :through => :schedules 
  accepts_nested_attributes_for :schedules
  accepts_nested_attributes_for :courses
end
