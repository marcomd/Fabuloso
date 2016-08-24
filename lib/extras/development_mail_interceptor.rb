class DevelopmentMailInterceptor
  def self.delivering_email(message)
    message.subject = "[#{message.to}] #{message.subject}"
    message.to      = 'm.mastrodonato@gmail.com'
    message.bcc     = '' # Commentare in test per inviare la comunicazione sulla casella posta comunicazioni mosaico
  end
end
