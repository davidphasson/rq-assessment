class SurveysController < ApplicationController
  # Rudimentary access control
  before_filter :authenticate, :only => [:update, :destroy, :index, :edit, :csv, :email]
  before_filter :find_survey, :only => %w(update destroy)

	# Should I need this?
  require 'fastercsv'

  def index
	  @surveys = Survey.paginate(:page => params[:page])
  end

  def csv
		@surveys = Survey.all

		csv_string = FasterCSV.generate do |csv| 
		  csv <<  [ "date", "first" , "last" , "email" , "total_score" , "rq_score" ]
	    @surveys.each do |survey|
	  	  csv << [ survey.created_at.strftime("%B %d %Y"), survey.first_name ,survey.last_name, survey.email, survey.total_score, survey.rq_score ]
		  end
		end 

    send_data csv_string, :type => "text/plain", 
							 :filename => "rq-surveys-#{Time.now.strftime("%Y%m%d")}.csv",
							 :disposition => 'attachment'
  end

	def email
	  @surveys = Survey.find(:all, :group => :email)

		csv_string = FasterCSV.generate do |csv| 
	    @surveys.each do |survey|
	  	  csv << [ survey.email ]
		  end
		end

    send_data csv_string, :type => "text/plain", 
							 :filename => "rq-emails-#{Time.now.strftime("%Y%m%d")}.csv",
							 :disposition => 'attachment'
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
		if APP_CONFIG['perform_authentication']
    	authenticate_or_request_with_http_basic do |username, password|
     	 username == APP_CONFIG['username'] && password == APP_CONFIG['password']
    	end
		end
  end


end
