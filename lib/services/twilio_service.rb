require 'twilio-ruby'

class TwilioService
  def initialize(account_sid, auth_token)
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def validate_phone_number(phone_number)
    begin
      response = @client.lookups.v1.phone_numbers(phone_number).fetch(type: ['carrier'])
      return response.carrier['type'] == 'mobile'
    rescue Twilio::REST::TwilioError => e
      puts "Error validating phone number #{phone_number}: #{e.message}"
      return false
    end
  end
end
