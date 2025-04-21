CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    hire_date DATE,
    salary DECIMAL(10, 2)
);

-- Insert multiple rows in one statement
INSERT INTO employees (first_name, last_name, email, hire_date, salary)
VALUES 
    ('John', 'Doe', 'john.doe@company.com', '2020-05-15', 75000.00),
    ('Jane', 'Smith', 'jane.smith@company.com', '2019-11-20', 82000.50),
    ('Michael', 'Johnson', 'michael.j@company.com', '2021-02-10', 68000.00),
    ('Emily', 'Williams', 'emily.w@company.com', '2018-07-30', 91000.75),
    ('Robert', 'Brown', 'robert.b@company.com', '2022-01-05', 72000.00);