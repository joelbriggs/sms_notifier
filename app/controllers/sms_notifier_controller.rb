class SmsNotifierController < ApplicationController
  def index
    
  end

  def user_signup
    SmsJob.perform_later('New User Signup', '+19162248832')

    flash[:notice] = 'New User Signup Sent'
    redirect_to sms_notifier_index_path
  end

  def user_action
    SmsJob.perform_later('User Action Taken', '+19162248832')

    flash[:notice] = 'User Action Taken Sent'
    redirect_to sms_notifier_index_path
  end

  def application_state
    SmsJob.perform_later('Application State Change', '+19162248832')

    flash[:notice] = 'Application State Change Sent'
    redirect_to sms_notifier_index_path
  end
end
