# frozen_string_literal: true

json.extract! job_title, :id, :name, :description, :created_at, :updated_at
json.url job_title_url(job_title, format: :json)
