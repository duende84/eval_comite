ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "evaluacion.cgc",
  :password             => "evalcomite",
  :authentication       => "plain",
  :enable_starttls_auto => true
}