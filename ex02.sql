CREATE DATABASE cntt3_ss02_kha2;
USE cntt3_ss02_kha2;

CREATE TABLE Student (
    student_id CHAR(10) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL
);

CREATE TABLE Subject (
    subject_id CHAR(10) PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    credit INT CHECK (credit > 0)
);