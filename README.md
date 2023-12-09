## A simple ruby script or application to read phone numbers from a CSV file.

- I have setup a simple ruby script or application to read phone numbers from a CSV file.
The application will validates phone numbers for SMS capabilities using Twilio's API. The script will process a CSV file containing phone numbers and output a new CSV file with invalid numbers removed.

- My goal was ensure the script reads phone numbers from a CSV file under a specified column header, checks each number using Twilio's Lookup API to ensure they are valid numbers and SMS-capable, and removes any numbers that are not textable. The final output should be a new CSV file with the invalid numbers omitted, preserving the rest of the data in each row.

# Phone Number Validation Script

## Description

This script reads phone numbers from a CSV file, validates each number using Twilio's Lookup API to ensure they are valid numbers and SMS-capable, and removes any numbers that are not textable. The final output is a new CSV file with the invalid numbers omitted, preserving the rest of the data in each row.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Installation

1. Install Ruby on your machine if you haven't already. You can download it from the [official Ruby website](https://www.ruby-lang.org/en/downloads/).
2. Clone this repository to your local machine using `git clone`.
3. Navigate to the project directory.
4. Install the necessary dependencies using `bundle install`.

## Usage

1. Replace `your_twilio_account_sid` and `your_twilio_auth_token` in the `main.rb` file with your actual Twilio credentials.
2. Specify the input and output CSV file paths in the `main.rb` file.
3. Run the script using `ruby main.rb`.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)
