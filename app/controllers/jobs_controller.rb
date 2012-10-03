class JobsController < ApplicationController
  def create
    @resume = Resume.find(params[:resume_id]) # Get the current resume
    @job = @resume.jobs.create(params[:job]) # Add job to resume
    redirect_to edit_resume_path(@resume) # Return to resume edit page
  end
end
