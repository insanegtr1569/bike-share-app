# Bike Share App

## Project Setup Instructions
1. **Clone the Repository**: 
   ```bash
   git clone https://github.com/insanegtr1569/bike-share-app.git
   cd bike-share-app
   ```
2. **Install Dependencies**: 
   ```bash
   npm install
   ```
3. **Run the Application**: 
   ```bash
   npm start
   ```

## Features Overview
- **User Authentication**: Secure login and registration.
- **Bike Availability Tracking**: View available bikes in real-time.
- **Booking System**: Users can book bikes for specified time periods.
- **Admin Dashboard**: Admins can manage bike inventory and view reports.

## API Endpoints Documentation
- **GET /api/bikes**: Retrieve a list of all available bikes.
- **POST /api/bookings**: Create a new bike booking.
- **GET /api/bookings/:userId**: Retrieve all bookings for a specific user.
- **DELETE /api/bookings/:bookingId**: Cancel a specific booking.

## Database Schema Description
### Tables
- **Users**: Stores user information including id, name, email, and password hash.
- **Bikes**: Stores bike information including id, model, location, and availability status.
- **Bookings**: Stores booking information including id, userId, bikeId, startTime, and endTime.