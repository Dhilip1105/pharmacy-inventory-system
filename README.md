# 💊 PharmaCare — Pharmacy Inventory System

A full-stack MERN pharmacy inventory management system with a modern dark glassmorphism UI.

## 🚀 Features

- 🔐 **Authentication** — JWT-based login/register with role support (admin/pharmacist)
- 💊 **Medicines** — Full CRUD with stock tracking, expiry dates, low-stock alerts
- 🏭 **Suppliers** — Manage supplier directory
- 🛒 **Purchases** — Record stock replenishments (auto-updates inventory)
- 💰 **Sales** — Record transactions with stock validation (auto-deducts inventory)
- 📊 **Reports** — Low stock, expiry alerts, top medicines, sales charts
- 🖥️ **Dashboard** — KPI cards, area chart, recent activity tables

## 🛠️ Tech Stack

| Layer | Technology |
|-------|-----------|
| Frontend | React 18, Vite, React Router v6, Recharts |
| Backend | Node.js, Express.js |
| Database | MongoDB, Mongoose |
| Auth | JWT + bcryptjs |
| Styling | Vanilla CSS (dark glassmorphism) |

## 📁 Project Structure

```
pharmacy-inventory-system/
├── client/          # React frontend (Vite)
└── server/          # Express backend
```

## ⚙️ Setup & Run

### Prerequisites
- Node.js 18+
- MongoDB (local or Atlas)

### 1. Configure Environment

```bash
cd server
cp .env.example .env
# Edit .env with your MongoDB URI and JWT secret
```

### 2. Install & Run Server

```bash
cd server
npm install
npm run dev      # Runs on http://localhost:5000
```

### 3. Install & Run Client

```bash
cd client
npm install
npm run dev      # Runs on http://localhost:5173
```

### 4. First Login

Register a new account at `http://localhost:5173/login`

## 🔌 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/api/auth/login` | Login |
| POST | `/api/auth/register` | Register |
| GET | `/api/medicines` | List medicines |
| POST | `/api/medicines` | Create medicine |
| PUT | `/api/medicines/:id` | Update medicine |
| DELETE | `/api/medicines/:id` | Delete medicine |
| GET | `/api/suppliers` | List suppliers |
| GET/POST | `/api/purchases` | Purchases |
| GET/POST | `/api/sales` | Sales |
| GET | `/api/reports/dashboard` | Dashboard stats |
| GET | `/api/reports/low-stock` | Low stock report |
| GET | `/api/reports/expiry` | Expiry report |
| GET | `/api/reports/top-medicines` | Top selling medicines |

## 🎨 Design

- **Theme**: Dark glassmorphism — `#07091a` base, glass cards
- **Accent**: Teal `#00d4aa` + Purple `#7c3aed`
- **Font**: Inter (Google Fonts)
- Smooth animations, hover effects, micro-interactions
- # DevOps real-time log collection test
Real-time GitHub log collection tests
