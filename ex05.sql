CREATE DATABASE cntt3_ss02_xuatsac1;
USE cntt3_ss02_xuatsac1;

CREATE TABLE Student (
    student_id CHAR(10) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL
);

CREATE TABLE Subject (
    subject_id CHAR(10) PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL
);

CREATE TABLE Score (
    student_id CHAR(10),
    subject_id CHAR(10),
    process_score DECIMAL(4,2) CHECK (process_score BETWEEN 0 AND 10),
    final_score DECIMAL(4,2) CHECK (final_score BETWEEN 0 AND 10),

    PRIMARY KEY (student_id, subject_id),
    FOREIGN KEY (student_id)
	REFERENCES Student(student_id),
    FOREIGN KEY (subject_id)
	REFERENCES Subject(subject_id)
);