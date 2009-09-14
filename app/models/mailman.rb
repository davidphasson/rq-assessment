class Mailman < ActionMailer::Base
  def survey_completed(survey)
    recipients "#{survey.first_name} #{survey.last_name} <#{survey.email}>"
    subject "Your RI Assessment Results"
    from "Relational Intelligence <noreply@relationalintelligence.info>"
    body :survey => survey
  end

end
