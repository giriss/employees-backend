# frozen_string_literal: true

class CreateJobTitles < ActiveRecord::Migration[6.1]
  def change
    create_table :job_titles do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
