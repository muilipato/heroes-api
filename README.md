# Heroes API

Welcome to the Heroes API! This API allows you to manage heroes and their superpowers. You can create, read, update, and delete heroes and powers using the provided endpoints.

## Getting Started

To get started with the Heroes API, follow these steps:

1. Clone the repository to your local machine.
2. Install the necessary dependencies by running `bundle install`.
3. Set up the database by running `rails db:migrate`.
4. Seed the database with sample data by running `rails db:seed`.  (This is optional)

5. Start the server by running `rails s`.

Now you're ready to make requests to the API!

## API Endpoints

### Heroes

- **GET /heroes**
  - Retrieves a list of all heroes.
  - Response format: JSON array of hero objects.
  - Example response:
    ```
    [
      {
        "id": 1,
        "name": "Kamala Khan",
        "super_name": "Ms. Marvel"
      },
      {
        "id": 2,
        "name": "Doreen Green",
        "super_name": "Squirrel Girl"
      }
    ]
    ```

- **GET /heroes/:id**
  - Retrieves a specific hero by ID.
  - Response format: JSON object representing the hero.
  - Example response:
    ```
    {
      "id": 1,
      "name": "Kamala Khan",
      "super_name": "Ms. Marvel",
      "powers": [
        {
          "id": 1,
          "name": "super strength",
          "description": "gives the wielder super-human strengths"
        },
        {
          "id": 2,
          "name": "flight",
          "description": "gives the wielder the ability to fly through the skies at supersonic speed"
        }
      ]
    }
    ```

- **POST /heroes**
  - Creates a new hero.
  - Request format: JSON object representing the hero to be created.
  - Example request:
    ```
    {
      "name": "Bruce Wayne",
      "super_name": "Batman"
    }
    ```
  - Example response (if successful):
    ```
    {
      "id": 3,
      "name": "Bruce Wayne",
      "super_name": "Batman"
    }
    ```

- **PATCH /heroes/:id**
  - Updates an existing hero.
  - Request format: JSON object representing the updated hero attributes.
  - Example request:
    ```
    {
      "name": "Kal-El",
      "super_name": "Superman"
    }
    ```
  - Example response (if successful):
    ```
    {
      "id": 2,
      "name": "Kal-El",
      "super_name": "Superman"
    }
    ```

- **DELETE /heroes/:id**
  - Deletes a specific hero by ID.

### Powers

- **GET /powers**
  - Retrieves a list of all powers.
  - Response format: JSON array of power objects.

- **GET /powers/:id**
  - Retrieves a specific power by ID.
  - Response format: JSON object representing the power.

- **PATCH /powers/:id**
  - Updates an existing power.
  - Request format: JSON object representing the updated power attributes.

- **POST /hero_powers**
  - Creates a new HeroPower association.
  - Request format: JSON object representing the HeroPower association to be created.

## Error Handling

If an error occurs while processing a request, the API will respond with an appropriate status code and an error message in JSON format. Example error response:

```
{
"error": "Hero not found"
}
```
## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

