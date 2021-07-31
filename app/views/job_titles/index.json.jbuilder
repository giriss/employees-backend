# frozen_string_literal: true

json.array! @job_titles, partial: 'job_titles/job_title', as: :job_title
