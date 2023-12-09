require 'csv'
require_relative 'services/twilio_service'

class CSVProcessor
  def initialize(input_file, output_file, twilio_service)
    @input_file = input_file
    @output_file = output_file
    @twilio_service = twilio_service
  end

  def process
    CSV.open(@output_file, 'w') do |csv_out|
      csv_out << CSV.read(@input_file).first

      CSV.foreach(@input_file, headers: true) do |row|
        phone_number = row['phone_number']

        if phone_number && @twilio_service.validate_phone_number(phone_number)
          csv_out << row
        else
          puts "Invalid or untextable phone number: #{phone_number}"
        end
      end
    end
  end
end
