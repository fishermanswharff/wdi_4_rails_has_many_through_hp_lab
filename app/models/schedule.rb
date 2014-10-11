# == Schema Information
#
# Table name: schedules
#
#  id         :integer          not null, primary key
#  student_id :integer
#  course_id  :integer
#  class_date :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Schedule < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
  accepts_nested_attributes_for :course
  # accepts_nested_attributes_for :student
end
