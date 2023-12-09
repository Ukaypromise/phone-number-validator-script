# spec/services/twilio_service_spec.rb

require 'spec_helper'

RSpec.describe TwilioService do
  let(:account_sid) { 'test_sid' }
  let(:auth_token) { 'test_token' }
  let(:twilio_service) { TwilioService.new(account_sid, auth_token) }

  describe '#validate_phone_number' do
    let(:valid_number) { 'valid_number' }
    let(:invalid_number) { 'invalid_number' }

    before do
      allow_any_instance_of(Twilio::REST::Lookups::V1::PhoneNumberInstance).to receive(:fetch).and_return(double('Carrier', carrier: {'type' => 'mobile'}))
    end

    it 'returns true for a valid number' do
      expect(twilio_service.validate_phone_number(valid_number)).to be true
    end

    it 'returns false for an invalid number' do
      allow_any_instance_of(Twilio::REST::Lookups::V1::PhoneNumberInstance).to receive(:fetch).and_raise(Twilio::REST::TwilioError)
      expect(twilio_service.validate_phone_number(invalid_number)).to be false
    end
  end
end
