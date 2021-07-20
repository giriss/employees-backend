# frozen_string_literal: true

class Employee < ApplicationRecord
  belongs_to :job_title
  validates :first_name, :last_name, presence: true
end
