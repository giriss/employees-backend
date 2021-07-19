# frozen_string_literal: true

class Employee < ApplicationRecord
  belongs_to :job_title
end
