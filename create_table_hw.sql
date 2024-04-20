drop table if exists groups;
CREATE TABLE groups (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

drop table if exists students;
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    group_id INTEGER,
    FOREIGN KEY (group_id) REFERENCES groups(id)
);

drop table if exists teachers;
CREATE TABLE teachers (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL
);

drop table if exists subjects;
CREATE TABLE subjects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    teacher_id INTEGER,
    FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);

drop table if exists grades;
CREATE TABLE grades (
    id SERIAL PRIMARY KEY,
    student_id INTEGER,
    subject_id INTEGER,
    grade INTEGER check (grade >= 0 and grade <= 100) NOT NULL,
    date_received DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (subject_id) REFERENCES subjects(id)
);
