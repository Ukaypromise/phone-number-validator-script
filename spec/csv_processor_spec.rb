require 'spec_helper'

RSpec.describe CSVProcessor do
  let(:input_file) { 'spec/fixtures/input.csv' }
  let(:output_file) { 'spec/fixtures/output.csv' }
  let(:twilio_service) { instance_double(TwilioService) }
  let(:processor) { CSVProcessor.new(input_file, output_file, twilio_service) }

  before do
    allow(TwilioService).to receive(:new).and_return(twilio_service)
  end

  describe '#process' do
    before do
      allow(twilio_service).to receive(:validate_phone_number).and_return(true)
      processor.process
    end

    it 'writes only valid numbers to the output CSV' do
      expect(CSV.read(output_file)).to eq(CSV.read(input_file))
    end
  end
end
