# frozen_string_literal: true

class JobTitlesController < ApplicationController
  before_action :authenticate

  # GET /job_titles
  # GET /job_titles.json
  def index
    @job_titles = JobTitle.all
  end
end
