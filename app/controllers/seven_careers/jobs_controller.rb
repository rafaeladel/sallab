class SevenCareers::JobsController < ApplicationController
  include SevenCareers::Concerns::JobsController

  private
  def job_params
    permitted = SevenCareers::Job.globalize_attribute_names + []
    params.require(:job).permit(*permitted)
  end
end

