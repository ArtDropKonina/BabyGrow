# Baby Grown Backend

A scalable and secure backend system built with Node.js and MongoDB, designed to support a multi-role childcare platform. It manages authentication, user profiles, professional services (doctors, nannies, kindergartens), real-time chat, favorites, and appointment scheduling.

---

## Project Overview

**Baby Grown** enables seamless coordination among:
- Parents
- Doctors
- Nannies
- Kindergarten administrators

Core features include:
- RESTful APIs
- JWT-based authentication
- Real-time chat (ready for WebSockets)
- Favorites and appointments
- Modular architecture for easy scaling

---

## Technologies Used

- Node.js & Express.js
- MongoDB (via Mongoose)
- JSON Web Tokens (JWT)
- bcrypt for password hashing
- dotenv for environment config
- CORS and Morgan middleware

---

## Setup Guide

### 1. Clone the Repository
```bash
git clone https://github.com/ArtDropKonina/BabyGrow.git
cd baby-grown back-end
```

### 2. Install Dependencies
```bash
npm install
```

### 3. Set Up Environment Variables

Create a `.env` file at the project root with the following:
```env
PORT=5000
MONGO_URI=your_mongo_connection_string
JWT_SECRET=your_jwt_secret
```

### 4. Run the Server

```bash
npm start
```

The server will be live at `http://localhost:5000`.

---

## Folder Structure

```
.
├── controllers/
├── models/
├── routes/
├── middleware/
├── server.js
├── db.js
└── .env
```

---

## API Features

- **Authentication:** Register/Login by role (Parent, Doctor, Nanny, Admin)
- **Chat System:** User-to-user messaging
- **Favorites:** Add/remove professionals
- **Appointments:** Book, update, and cancel
- **CRUD Services:** For doctors, nannies, and kindergartens

---

## Security

- Passwords hashed using bcrypt
- Role-based access control
- Secure environment variables
- Input validation and sanitation

---

## Future Enhancements

- WebSocket chat (Socket.IO)
- Admin dashboard
- Notification system (Email/Push)
- Multilingual support
- Analytics and reporting

---

## License

This project is licensed under the MIT License.
