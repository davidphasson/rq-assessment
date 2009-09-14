class SurveysController < ApplicationController
  # Rudimentary access control
  before_filter :authenticate, :only => [:update, :destroy, :index, :edit]
  before_filter :find_survey, :only => %w(update destroy)

  def index
    @surveys = Survey.all
  end
  
  def show
    # Preload all associations
    @survey = Survey.find(params[:id], :include => [:responses => [:question => :category]])
  end
  
  def new
    @survey = Survey.new
    Question.all.each do |q|
      @survey.responses.build(:question_id => q.id)
    end
  end
  
  def create
    @survey = Survey.new(params[:survey])
    if @survey.save
      # This is showing up for a person that just took it, silly
      # flash[:notice] = "Successfully created survey."
      Mailman.deliver_survey_completed @survey
      redirect_to @survey
    else
      render :action => 'new'
    end
  end
  
  def edit
    @survey = Survey.find(params[:id], :include => [:responses => :question])
  end
  
  def update
    if @survey.update_attributes(params[:survey])
      flash[:notice] = "Successfully updated survey."
      redirect_to @survey
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @survey.destroy
    flash[:notice] = "Successfully destroyed survey."
    redirect_to surveys_url
  end

  protected

  def find_survey
    @survey = Survey.find(params[:id])
  end

  private

  # todo: move to app_config.yml
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "admin" && password == "ri_test"
    end
  end


end
