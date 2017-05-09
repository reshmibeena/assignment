class CreateExams < ActiveRecord::Migration[5.0]
  def change
    create_table :exams do |t|
      t.string :name
      t.integer :total_mark
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
