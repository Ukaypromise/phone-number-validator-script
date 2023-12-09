require_relative 'lib/services/twilio_service'
require_relative 'lib/csv_processor'

# Specify your Twilio credentials
account_sid = 'your_twilio_account_sid'
auth_token = 'your_twilio_auth_token'

# Specify file paths
input_csv_file = 'data/input.csv'
output_csv_file = 'output/valid_numbers.csv'

# Initialize Twilio service and CSV processor
twilio_service = TwilioService.new(account_sid, auth_token)
csv_processor = CSVProcessor.new(input_csv_file, output_csv_file, twilio_service)

# Process the CSV file
csv_processor.process

puts 'Processing completed. Check the output CSV file for valid phone numbers.'
