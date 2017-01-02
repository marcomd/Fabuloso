require "development_mail_interceptor"

ActionMailer::Base.smtp_settings = {
  :address              => ENV['GMAIL_SERVER'],
  :port                 => 587,
  :domain               => ENV['GMAIL_DOMAIN'],
  :user_name            => ENV['GMAIL_USER'],
  :password             => ENV['GMAIL_PWD'],
  :authentication       => "plain",
  :enable_starttls_auto => true,
}

ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
