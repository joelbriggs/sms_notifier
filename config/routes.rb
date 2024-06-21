Rails.application.routes.draw do
  get 'sms_notifier/index'
  get 'sms_notifier/user_signup'
  get 'sms_notifier/user_action'
  get 'sms_notifier/application_state'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "sms_notifier#index"
end
