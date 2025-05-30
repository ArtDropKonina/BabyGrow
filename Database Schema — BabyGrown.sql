#  Database Schema — BabyGrown

## Tables Overview

### `users`
Stores user information.

| Field         | Type          | Description                   |
|---------------|---------------|-------------------------------|
| id            | SERIAL        | Primary key                   |
| first_name    | VARCHAR(255)  | First name                    |
| last_name     | VARCHAR(255)  | Last name                     |
| username      | VARCHAR(255)  | Unique login name             |
| password_hash | VARCHAR(255)  | Hashed password               |
| email         | VARCHAR(255)  | Email                         |
| role          | VARCHAR(50)   | Role: `parent`, `admin`       |
| created_at    | TIMESTAMP     | Created time                  |
| updated_at    | TIMESTAMP     | Last updated                  |

### `nannies`
Childcare provider data.

| Field         | Type          | Description                   |
|---------------|---------------|-------------------------------|
| id            | SERIAL        | Primary key                   |
| name          | VARCHAR(255)  | Nanny’s full name             |
| age           | INTEGER       | Age                           |
| experience    | INTEGER       | Years of experience           |
| city          | VARCHAR(255)  | City                          |
| address       | VARCHAR(255)  | Address                       |
| district      | VARCHAR(255)  | District                      |
| price         | DECIMAL       | Daily price                   |
| photo_url     | TEXT          | Photo URL                     |
| availability  | TEXT          | Schedule                      |
| phone_number  | VARCHAR(20)   | Phone number                  |
| specialization| VARCHAR       | Always `nanny`                |
| user_id       | INTEGER       | FK to `users.id`              |
| created_at    | TIMESTAMP     | Created time                  |

### `favorites`
User favorites list (nannies, doctors, etc.).

| Field       | Type         | Description                      |
|-------------|--------------|----------------------------------|
| user_id     | INTEGER      | FK to users                      |
| item_id     | INTEGER      | Favorited item's ID              |
| item_type   | VARCHAR(50)  | Type: `nanny`, `doctor`, etc.    |
| created_at  | TIMESTAMP    | When it was added                |

### `messages`
Chat between users.

| Field         | Type        | Description                      |
|---------------|-------------|----------------------------------|
| id            | SERIAL      | Primary key                      |
| sender_id     | INTEGER     | FK to users                      |
| receiver_id   | INTEGER     | FK to users                      |
| text          | TEXT        | Message text                     |
| photo_url     | TEXT        | Optional image                   |
| timestamp     | TIMESTAMP   | Sent time                        |
| edited_at     | TIMESTAMP   | Edit time                        |
