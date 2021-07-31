# frozen_string_literal: true

class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :dob
      t.references :job_title, null: false, foreign_key: true
      t.integer :status
      t.boolean :permanent

      t.timestamps
    end
  end
end
