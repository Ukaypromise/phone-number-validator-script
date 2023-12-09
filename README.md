## A simple ruby script or application to read phone numbers from a CSV file.

- I have setup a simple ruby script or application to read phone numbers from a CSV file.
The application will validates phone numbers for SMS capabilities using Twilio's API. The script will process a CSV file containing phone numbers and output a new CSV file with invalid numbers removed.

- My goal was ensure the script reads phone numbers from a CSV file under a specified column header, checks each number using Twilio's Lookup API to ensure they are valid numbers and SMS-capable, and removes any numbers that are not textable. The final output should be a new CSV file with the invalid numbers omitted, preserving the rest of the data in each row.