# Java Tax Calculator

This is a Spring MVC Web App written in Java 8 that calculates the net tax payable for an individual based on their
taxable income, investment, and other factors such as their payer category and payer zone. The code uses various classes
and methods to perform the necessary calculations and print out the details of each step.

If you are a guest user, you can calculate your tax by entering your income and other relevant details. If you are a
logged-in user, you can save your details and tax information for future reference.

## Technologies Used

- Java
- Spring Framework
- Hibernate
- MySQL
- JUnit
- Log4j

## Installation

1. Clone the repository
2. Install Maven
3. Build the project with Maven using the following command: `mvn clean install`
4. Deploy the WAR file to a servlet container such as Apache Tomcat.

## Usage As Guest

1. Navigate to the deployed application in a web browser.
2. Enter your income and other relevant details.
3. Click the "Calculate" button to calculate your income tax.

## Usage As Logged In User

1. Navigate to the Register page and register a new user.
2. Navigate to the Login page and login with the credentials you just registered.
3. Click the "Add Info" button to calculate your income tax.

## Schema
![Schema](https://i.imgur.com/9D55ZIK.png)

```mysql
CREATE TABLE users (
user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
password VARCHAR(50) NOT NULL,
tin_number VARCHAR(50) NOT NULL
);

CREATE TABLE user_income (
user_income_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
basic_salary DOUBLE NOT NULL,
house_rent DOUBLE NOT NULL,
medical_allowance DOUBLE NOT NULL,
conveyance_allowance DOUBLE NOT NULL,
incentive DOUBLE NOT NULL,
festival_bonus DOUBLE NOT NULL,
investment DOUBLE NOT NULL,
payer_category ENUM('General', 'FemaleOrSeniorCitizen', 'Disabled', 'GazettedFreedomFighter') NOT NULL,
payer_zone ENUM('DhakaOrChittagong', 'OtherCities', 'RestOfTheCountry') NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE tax_info (
tax_info_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
accepted_investment DOUBLE NOT NULL,
rebate DOUBLE NOT NULL,
tax_after_rebate DOUBLE NOT NULL,
total_taxable_income DOUBLE NOT NULL,
gross_tax_liability DOUBLE NOT NULL,
eligible_amount DOUBLE NOT NULL,
net_tax DOUBLE NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(user_id)
);
```

## Inspiration

The business logic for this application was inspired by the tax calculator provided by the Rongdhonustudio
website: https://rongdhonustudio.com/TaxCalculator.html . The Business Logic behind the Tax Calculator is re-written by
me in
JAVA 8 from the original source code.

Original JavaScript Links

- [script 22.0 A.js](https://rongdhonustudio.com/js/script%2022.0%20A.js)
- [script 22.0 B.js](https://rongdhonustudio.com/js/script%2022.0%20B.js)
