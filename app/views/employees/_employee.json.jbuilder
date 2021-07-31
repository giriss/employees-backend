# frozen_string_literal: true

json.extract! employee, :id, :first_name, :last_name, :email, :dob, :job_title_id, :status, :permanent, :created_at,
              :updated_at
json.url employee_url(employee, format: :json)
