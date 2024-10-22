<div align="center">
  
# 📝 Todo Application
  
[![Go](https://img.shields.io/badge/go-%2300ADD8.svg?style=for-the-badge&logo=go&logoColor=white)](https://go.dev/)
[![React](https://img.shields.io/badge/react-%2320232a.svg?style=for-the-badge&logo=react&logoColor=%2361DAFB)](https://reactjs.org/)
[![MongoDB](https://img.shields.io/badge/MongoDB-%234ea94b.svg?style=for-the-badge&logo=mongodb&logoColor=white)](https://www.mongodb.com/)
[![Railway](https://img.shields.io/badge/Railway-131415?style=for-the-badge&logo=railway&logoColor=white)](https://railway.app/)
[![Vite](https://img.shields.io/badge/vite-%23646CFF.svg?style=for-the-badge&logo=vite&logoColor=white)](https://vitejs.dev/)

A modern, full-stack todo application built with Go (Fiber) + React + MongoDB

[Features](#features) • [Installation](#installation--setup) • [Documentation](#api-endpoints) • [Contributing](#contributing)

![Todo App Demo](https://raw.githubusercontent.com/github/docs/main/assets/images/todo-demo.gif)

</div>

---

## 🚀 Tech Stack

### Backend
- 🔷 Go
- 🚅 Fiber (Web Framework)
- 🍃 MongoDB

### Frontend
- ⚛️ React
- ⚡ Vite

---

## ✨ Features

- 📱 Responsive Design
- 🔄 Real-time Updates
- 🎯 Task Management
- ✅ Mark Tasks Complete
- 🗑️ Delete Tasks
- 💾 Persistent Storage

---

## 🛠️ Prerequisites

Before you begin, ensure you have the following installed:
- 🔷 Go (version 1.16 or later)
- 💻 Node.js (version 14 or later)
- 🍃 MongoDB Atlas Account or Local MongoDB
- 📦 Git

---

## 🌟 Installation & Setup

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/vigneshs-dev/golang-to-do-app.git
cd golang-to-do-app
```

### 2️⃣ Backend Setup

#### Install Go Dependencies
```bash
go mod download
```

#### Environment Variables
Create a `.env` file in the root directory:
```env
MONGODB_URI=your_mongodb_connection_string
PORT=5000
ENV=development
```

Replace `your_mongodb_connection_string` with your MongoDB Atlas connection string or local MongoDB URL.

#### Run the Backend
```bash
go run main.go
```
The server will start on `http://localhost:5000`

### 3️⃣ Frontend Setup

Navigate to the client directory:
```bash
cd client
```

Install dependencies:
```bash
npm install
```

Create a `.env` file in the client directory:
```env
VITE_API_URL=http://localhost:5000/api
```

Start the development server:
```bash
npm run dev
```
The frontend will start on `http://localhost:5173`

---

## 📁 Project Structure

```
project-root/
├── 📜 main.go                 # Main backend server file
├── 📦 go.mod                  # Go modules file
├── 📋 go.sum                  # Go modules checksum
├── 🔒 .env                    # Backend environment variables
├── 📁 client/                 # Frontend React application
│   ├── 📁 src/
│   ├── 📦 package.json
│   ├── 🔒 .env               # Frontend environment variables
│   └── ...
└── 📖 README.md
```

---

## 🔌 API Endpoints

### Todo Routes
| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET` | `/api/todos` | Get all todos |
| `POST` | `/api/todos` | Create a new todo |
| `PATCH` | `/api/todos/:id` | Update todo status |
| `DELETE` | `/api/todos/:id` | Delete a todo |

---

## 💻 Development

### Running in Development Mode

1. Start the backend server:
```bash
go run main.go
```

2. In a separate terminal, start the frontend development server:
```bash
cd client
npm run dev
```

### Building for Production

1. Build the frontend:
```bash
cd client
npm run build
```

2. Build the backend:
```bash
go build -o app
```

---

## 🚂 Deployment

The application is deployed on Railway.app. For local development, follow the installation steps above.

### Environment Variables Required for Deployment
| Variable | Description |
|----------|-------------|
| `MONGODB_URI` | MongoDB connection string |
| `PORT` | Application port |
| `ENV` | Set to "production" |

---

## ❗ Common Issues & Solutions

### Backend Issues

1. **🔴 MongoDB Connection Failed**
   - Check if your MongoDB URI is correct
   - Ensure your IP address is whitelisted in MongoDB Atlas
   - Verify network connectivity

2. **🔴 Port Already in Use**
   - Change the port in .env file
   - Check if another process is using the same port

### Frontend Issues

1. **🔴 API Calls Failed**
   - Verify the VITE_API_URL in frontend .env file
   - Check if the backend server is running
   - Verify CORS settings in the backend

2. **🔴 Build Failures**
   - Clear npm cache: `npm cache clean --force`
   - Delete node_modules and reinstall: 
     ```bash
     rm -rf node_modules
     npm install
     ```

---

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details

---

<div align="center">

Made with ❤️ by VigneshS

⭐ Star this repository if you found it helpful!

</div>