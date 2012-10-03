class SkillsController < ApplicationController
  def create
    @resume = Resume.find(params[:resume_id]) # Get the current resume
    @skill = @resume.skills.create(params[:skill]) # Use the create function from resume to add the new skill
    redirect_to edit_resume_path(@resume) # Since my skills are on the edit page, direct back to that page
  end
end
