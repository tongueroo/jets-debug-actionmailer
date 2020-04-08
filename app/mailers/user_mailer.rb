class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_user.subject
  #
  def new_user
    from_env = ENV['_HANDLER'] ? "lambda" : "local"
    @greeting = "Hi4 from #{from_env} aws region #{Jets.aws.region} time sent #{Time.now}"

    puts "in UserMailer#newUser 1"
    puts "UserMailer ActionMailer::Base.smtp_settings #{ActionMailer::Base.smtp_settings.inspect}"
    puts "UserMailer ActionMailer::Base.delivery_method #{ActionMailer::Base.delivery_method}"
    puts "in UserMailer#newUser 2"

    mail to: "tung@boltops.com"
  end
end
