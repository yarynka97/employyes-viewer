CREATE DATABASE IF NOT EXISTS EmployeesList;

CREATE TABLE IF NOT EXISTS tblDepartments (
  dpID BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dpName VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS tblEmployees (
  empID BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  empName VARCHAR(30) NOT NULL,
  empActive BOOLEAN NOT NULL,
  emp_dpID BIGINT NOT NULL,
  FOREIGN KEY (emp_dpID) REFERENCES tblDepartments (dpID)
);

ALTER TABLE tblEmployees ADD INDEX empName(empName);
ALTER TABLE tblDepartments ADD INDEX dpName(dpName);

