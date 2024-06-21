class SmsJob < ApplicationJob
    include SmsGateway
    queue_as :default
    retry_on StandardError, wait: 5.seconds, attempts: 3

    rescue_from(StandardError) do |exception|
        process_failure(exception)
    end

    def perform(message, receipient)
        SmsGateway.send_sms(message, receipient)
    end

    private

    def process_failure(e)
        Rails.logger.error "SMS Job Failure: #{e.message}"
    end
end