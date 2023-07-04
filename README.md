# Superheroes Backend API 
This README would normally document whatever steps are necessary to get the
application up and running.
#### Author: Jeliza Silatei

# Things you may want to cover:
This README provides documentation for the behavior-driven backend API of the Pizza application. 

* Ruby version
### Description

* System dependencies
The backend API of the Pizza application provides functionality for managing heroes and powers. It allows users to retrieve a list of heroes, view details of the power they have and create a relationship between a heroes and powers.

* Configuration
### Installation

* Database creation
To set up the backend API locally, follow these steps:

* Database initialization
1. Clone the repository: `git clone <repository-url>`
2. Install dependencies: `bundle install`
3. Set up the database: `rails db:migrate db:seed`
4. Start the server: `rails server`

* How to run the test suite
### Usage

The backend API provides the following endpoints:

- **GET /heros**: Retrieve a list of all heroes.
- **GET /powers**: Retrieve a list of all powers.
- **GET /heros/:id**: View details of a hero , including the associated power.
- **POST /heros/:hero_power**: Create a relationship between a hero and their power.

### Authentication and Authorization

The backend API does not require authentication or authorization to access the endpoints.

### Error Handling
The backend API handles errors and exceptions in the following way:

- If a requested resource is not found, the API returns a JSON response with an appropriate error message and a status code of 404 (Not Found).
- If an error occurs during the creation of a ``HeroPower`` object due to validation failure, the API returns a JSON response with the specific validation errors and a status code of 422 (Unprocessable Entity).

### Contributing
Contributions to the backend API are welcome! If you encounter any bugs, have suggestions for improvements, or would like to submit a pull request, please `create an issue` or `submit a pull request`.

### License
The backend API is released under the `MIT License`.

### Contact
For any questions or further information, please contact Jeliza Silatei.

### Acknowledgments
Special thanks to the open-source libraries and resources used in its development.