# frozen_string_literal: true

class JobTitle < ApplicationRecord
  has_many :employees, dependent: :destroy
end
