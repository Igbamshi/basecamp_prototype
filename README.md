# Basecamp Project Management App

A simple project management application built with Ruby on Rails, allowing users to create, manage, and assign roles (Admin/User), as well as create and manage projects.

## Table of Contents

- Features
- Technologies Used
- Installation
- Usage
- Project Management
- User Management
- Contributing
- License
- Contact

## Features

- **User Management**: 
  - Create users
  - Edit users
  - Delete users
  - Assign/remove admin roles to/from users
- **Project Management**:
  - Display a list of projects for each user
  - Create, edit, and delete projects
  - View detailed project information
- **Admin Panel**:
  - Admin users have the ability to manage user roles.

## Technologies Used

- **Ruby**: 3.3.0
- **Rails**: 7.2.1
- **Devise**: for user authentication
- **Bootstrap**: 5.3 for styling
- **PostgreSQL**: (or your choice of database)
- **Importmap**: for JavaScript management

## Installation

Follow these steps to set up the project locally:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/project-management-app.git
   cd project-management-app
2. **Install Dependacies**:
   ```bash
   bundle install
3. **Setup the database**:
   ```bash
   rails db:create
   rails db:migrate
5. **Run the server**:
   ```bash
   rails server
6. **Access the app**:
    Open your browser and navigate to http://localhost:3000.


# Usage
- **User Management**
    - **Create User**:Users can sign up via the registration form.
    - **Edit User**: Logged-in users can update their profile.
    - **Delete User**: Admins can delete any user, while regular users can delete their own account.
    - **Assign Admin Role**: Admins can promote any user to admin.
    - **Remove Admin Role**: Admins can demote other admins to regular users.
  # Project Management
    - **Create Project**: Users can create new projects.
    - **View Projects**: Users can see a list of all their projects.
    - **Edit Project**: Users can edit the details of their own projects.
    - **Delete Project**: Users can delete their own projects.
    - **View Project Details**: A detailed view of each project, including its description, start/end date, etc.
  # Admin Panel
    - **Make Admin**: Assign admin role to users.
    - **Remove Admin**: Remove admin privileges from a user.
  # Project Management Features
    - **List Projects**: Displays all projects for each user on the user's profile.
    - **View Project**: View detailed information about a project.
    - **Edit Project**: Admins and project owners can edit project details.
    - **Delete Project**: Admins and project owners can delete a project.


# API Endpoints
- **Make User Admin**:
  ```bash
  POST /users/:id/make_admin
- **Remove Admin Privileges**:
  ```bash
  POST /users/:id/remove_admin


# Contributing
  1. Fork the repository.
  2. Create your feature branch:
     ```bash
     git checkout -b feature/AmazingFeature
3. Commit your changes:
   ```bash
   git commit -m 'Add some amazing feature'
4. Push to the branch:
   ```bash
   git push origin feature/AmazingFeature
5. Open a pull request


# License
This project is licensed under the MIT License - see the LICENSE file for details.

# Contact
Your Name - victorelisha2410@gmail.com

Project Link: https://github.com/Igbamshi/project-management-app
