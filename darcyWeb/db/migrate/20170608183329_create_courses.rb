class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.references :room, foreign_key: true
      t.string :title
      t.decimal :code
      t.string :start_time
      t.string :end_time
      t.integer :day_of_week
      t.string :classroom
    end
  end
end