class ResumesController < ApplicationController
  # GET /resume
  def index
    @resumes = Resume.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @resumes }
    end
  end
  
  # GET /resume/new
  def new
    @resume = Resume.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @resume }
    end
  end
  
  # GET /resume/1
  def show
    @resume = Resume.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @resume }
    end
  end
  
  # GET /resume/create
  def create
    @resume = Resume.new(params[:resume])

    respond_to do |format|
      if @resume.save
        format.html { redirect_to @resume, notice: 'Resume was successfully created.' }
        format.json { render json: @resume, status: :created, location: @resume }
      else
        format.html { render action: "new" }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /resume/1/edit
  def edit
    @resume = Resume.find(params[:id])
  end
  
  # POST /resume/1
  def update
    @resume = User.find(params[:id])

    respond_to do |format|
      if @resume.update_attributes(params[:user])
        format.html { redirect_to @resume, notice: 'Resume was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /resume/1/delete
  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy

    respond_to do |format|
      format.html { redirect_to resumes_url }
      format.json { head :no_content }
    end
  end
  
end
