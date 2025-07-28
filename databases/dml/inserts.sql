INSERT INTO positions(name, position_level) VALUES('Software Engineer', 'Pleno');
INSERT INTO positions(name, position_level) VALUES('DBA', 'Sênior');
INSERT INTO positions(name, position_level) VALUES('HR Analyst', 'Júnior');

INSERT INTO employees(full_name, hire_date, position_id) VALUES('Ana Oliveira', TO_DATE('2022-01-10', 'YYYY-MM-DD'), 2);
INSERT INTO employees(full_name, hire_date, position_id) VALUES('João Souza', TO_DATE('2023-03-15', 'YYYY-MM-DD'), 3);
INSERT INTO employees(full_name, hire_date, position_id) VALUES('Carla Fernandes', TO_DATE('2021-08-01', 'YYYY-MM-DD'), 1);

INSERT INTO benefits(name, type, base_value, validity_months) VALUES('Vale Refeição', 'Alimentação', 500.00, 12);
INSERT INTO benefits(name, type, base_value, validity_months) VALUES('Plano de Saúde', 'Saúde', 900.00, null);

INSERT INTO concession_criteria(benefit_id, criteria_type, reference_value) VALUES(1, 'Tempo mínimo', '6 meses');
INSERT INTO concession_criteria(benefit_id, criteria_type, reference_value) VALUES(2, 'Cargo elegível', 'Apenas pleno ou +');

INSERT INTO employees_benefits(employee_id, benefit_id, concession_date, granted_value, status) VALUES(3, 1, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 500.00, 'GRANTED');
INSERT INTO employees_benefits(employee_id, benefit_id, concession_date, granted_value, status) VALUES(4, 2, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 900.00, 'GRANTED');
INSERT INTO employees_benefits(employee_id, benefit_id, concession_date, granted_value, status) VALUES(5, 1, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 500.00, 'PENDING');