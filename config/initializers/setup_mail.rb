# require "development_mail_interceptor"
#
# ActionMailer::Base.smtp_settings = {
#   :address              => "smtp.gmail.com",
#   :port                 => 587,
#   :domain               => "gmail.com",
#   :user_name            => "usename",
#   :password             => "pass",
#   :authentication       => "plain",
#   :enable_starttls_auto => true
# }
#
#
#
# ActionMailer::Base.perform_deliveries = true
# ActionMailer::Base.raise_delivery_errors = true
# ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?