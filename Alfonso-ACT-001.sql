CREATE TABLE authors (
	author_id INT,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	biography TEXT,
	dob DATE
);


CREATE TABLE publishers (
	publisher_id INT,
    name VARCHAR(150),
    country VARCHAR(100)
);


CREATE TABLE books (
	book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150),
    isbn VARCHAR(20),
    publication_date DATE,
    price DECIMAL(10,2) CHECK (price > 0),
    publisher_id INT
);


CREATE TABLE book_authors (
    book_id INT,
    author_id INT
);


CREATE TABLE patients (
	patient_id INT,
    first_name VARCHAR(150),
    last_name VARCHAR(150),
    date_of_birth DATE NOT NULL,
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    created_at DATETIME
);


CREATE TABLE doctors (
    doctor_id INT,
    first_name VARCHAR(150),
    last_name VARCHAR(150),
    specialty VARCHAR(150),
    licensed_year YEAR
);


CREATE TABLE appointments (
    appointment_id INT,
    patient_id INT,
    doctor_id INT,
    appointment_datetime DATETIME,
    reason TEXT,
    status ENUM('Scheduled', 'Completed', 'Canceled', 'No-Show') DEFAULT 'Scheduled'
);




CREATE TABLE departments (
    department_id INT,
    dept_name VARCHAR(100),
    office_location VARCHAR(150)
);



CREATE TABLE courses (
    course_id INT,
    course_code VARCHAR(20),
    title VARCHAR(150),
    credits TINYINT UNSIGNED NOT NULL CHECK (credits > 0),
    department_id INT,
    prerequisite_course_id INT
);