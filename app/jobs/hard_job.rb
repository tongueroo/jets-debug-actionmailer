class HardJob < ApplicationJob
  rate "10 hours" # every 10 hours
  def dig
    puts "HardJob Jets.config.object_id #{Jets.config.object_id}"
    puts "HardJob Jets.config.action_mailer.object_id #{Jets.config.action_mailer.object_id} (config.action_mailer)"

    # puts "checking email settings"
    # puts "HardJob ActionMailer::Base.smtp_settings #{ActionMailer::Base.smtp_settings.inspect}"
    # puts "HardJob ActionMailer::Base.delivery_method #{ActionMailer::Base.delivery_method}"
    # UserMailer.new_user.deliver
    # puts "checking email settings done"
  end
end
