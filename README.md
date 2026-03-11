# LMS-Nexus: Full-Stack E-Learning Platform

A robust Learning Management System (LMS) built to handle structured course delivery, multimedia lessons, and granular user progress tracking using a PHP backend and Flutter mobile application.

## 🎓 Key Features
* **Hierarchical Content:** Organized structure for Courses, Modules, and Lessons.
* **Progress Tracking:** Real-time persistence of completed lessons per user.
* **Multimedia Support:** Integrated logic for video streaming links and text-based content.
* **Interactive UI:** Smooth Flutter interface with lesson locking and completion indicators.

## 📁 Project Structure
* `/backend`: Course management API, progress update logic, and relational SQL schema.
* `/mobile_app`: Flutter source code featuring the Course Player and Enrollment screens.

## 🛠️ Setup Instructions
1. Import `backend/lms_database.sql` into your MySQL environment.
2. Update the database connection strings in the PHP files.
3. Configure the `baseUrl` in the Flutter service layer to point to your server.
4. Run `flutter pub get` and `flutter run`.

## 📈 Scalability
The database is designed with Foreign Key constraints to ensure data integrity as the number of courses and students grows.
