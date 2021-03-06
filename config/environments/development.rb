Jets.application.configure do
  # Example:
  # config.function.memory_size = 1536

  # config.action_mailer.raise_delivery_errors = false
  # Docs: http://rubyonjets.com/docs/email-sending/

  # config.action_mailer = ActiveSupport::OrderedOptions.new
  # puts "config/application/development.rb config.object_id: #{config.object_id}"
  # puts "config/application/development.rb config.action_mailer.object_id: #{config.action_mailer.object_id}"
  config.action_mailer.show_previews = false # default: false
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:         ENV['SMTP_ADDRESS'],
    port:            587,
    domain:          ENV['SMTP_DOMAIN'],
    authentication:  :login,
    user_name:       ENV['SMTP_USER_NAME'],
    password:        ENV['SMTP_PASSWORD'],
    enable_starttls_auto: true
  }

end
