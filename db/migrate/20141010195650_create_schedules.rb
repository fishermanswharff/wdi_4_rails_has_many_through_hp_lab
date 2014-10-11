class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.belongs_to :student
      t.belongs_to :course
      t.datetime :class_date
      t.timestamps
    end
  end
end
