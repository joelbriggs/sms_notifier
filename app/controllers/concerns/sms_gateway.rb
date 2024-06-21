module SmsGateway extend ActiveSupport::Concern
    def self.send_sms(message, recipient)
        # These should be enviroment variables 
        account_sid = "AXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
        auth_token = "abcdefghijklmnopqrstuvwxyz1234567890"


        @client = Twilio::REST::Client.new account_sid, auth_token

        begin
            @client.messages.create(
                body: message,
                to: recipient,
                from: "+18449022478",
            )
        rescue => e
            handle_failure(e)
            raise e
        end
    end

    private

    def self.handle_failure(e)
        Rails.logger.error "SMS Gateway Failure: #{e.message}"
    end
end