# Agency Management System ![unfinished](https://img.shields.io/badge/unfinished-red) ![inactive](https://img.shields.io/badge/inactive-white)

[![Laravel](https://img.shields.io/badge/Laravel-FF2D20?style=flat&logo=laravel&logoColor=white)](https://laravel.com/)  [![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=javascript&logoColor=black)](https://developer.mozilla.org/en-US/docs/Web/JavaScript)  ![Oracle](https://img.shields.io/badge/Oracle-black?style=flat&logo=oracle&logoColor=red)  

## Overview
**Agency Management System** is a specialized software solution designed to streamline and automate the operations related to insurance agents. It covers agent administration, movement tracking, and accurate calculation and disbursement of remunerations such as commissions, bonuses, and incentives.

This system assists operational, finance, and management teams in monitoring agent activities, validating agent-related data, and simplifying complex business workflows in a centralized platform.

---

## Features
- **Agent Management:** Add, update, and track agent profiles including roles, status, branch affiliations, and hierarchy.
- **Policy Administration:** Monitor policy submissions, validate agent data, and link policies to responsible agents.
- **Agent Movement Tracking:** Record and manage structural changes such as promotions, branch transfers, terminations, and hierarchy changes.
- **Remuneration Processing:** Automatically calculate commissions, bonuses, incentives, and applicable deductions (e.g., taxes, bank fees).
- **Remuneration History:** View complete payment history per agent, including holds, revisions, and reversal journals.
- **Approval Workflow:** Multi-level approval process for data submissions, revisions, and remuneration payments.
- **Dynamic Reporting:** Generate periodic reports for agent performance, commission distribution, and operational costs.
- **Role-Based Access Control:** Secure access by defining user roles for admin, supervisors, finance, and management.
- **Notifications & Reminders:** Get alerts for new submissions, data validation issues, and payment status updates.

---

## Technology Stack
- **Application:** Laravel 10.x
- **Database:** Oracle Database 19c

---

## Installation

### Prerequisites
- Oracle Database installed and running (e.g., Oracle 19c)
- PHP 8.x or higher
- Laravel Framework 10.x
- Composer (for PHP package management)

### Database Setup
1. Create a new Oracle user/schema for the application.
    ```sql
    CREATE USER db_agency IDENTIFIED BY your_password;
    GRANT CONNECT, RESOURCE TO db_agency;
    ```
2. Run the provided SQL scripts to create tables, indexes, and seed data.
    
3. Configure your Laravel `.env` file to connect to Oracle:

    ```
    DB_CONNECTION=oracle
    DB_HOST=your_oracle_host
    DB_PORT=1521
    DB_SERVICE_NAME=orclpdb
    DB_USERNAME=agency_user
    DB_PASSWORD=your_password
    ```

### Installation & Setup
1. Clone the repository:
    ```bash
    git clone https://github.com/romtoni/AgencyManagementSystem.git
    ```
2. Navigate to the project directory:
    ```bash
    cd AgencyManagementSystem
    ```
3. Install PHP dependencies using Composer:
    ```bash
    composer install
    ```
4. Install frontend dependencies and compile assets:
    ```bash
    npm install
    npm run build
    ```
5. Copy `.env.example` to `.env` and update database and other environment variables.
6. Generate application key:
    ```bash
    php artisan key:generate
    ```
7. Run Laravel migrations and seeders:
    ```bash
    php artisan migrate --seed
    ```
8. Start the Laravel development server:
    ```bash
    php artisan serve
    ```

---

## Usage
- Access the dashboard at `http://localhost:3000`
- Register as an admin or agent
- Manage clients, projects, tasks, and billing

---

## Contributing
Contributions are welcome! Please:
1. Fork the repo
2. Create a branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m 'Add feature'`)
4. Push (`git push origin feature/your-feature`)
5. Open a Pull Request

---

## License
This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

## Acknowledgments
Thanks to all contributors and Oracle Database community for their support.
