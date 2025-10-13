CREATE TABLE experience (
    id SERIAL PRIMARY KEY,
    company VARCHAR(100),
    role VARCHAR(100),
    start_date DATE,
    end_date DATE,
    description TEXT
);

CREATE TABLE education (
    id SERIAL PRIMARY KEY,
    institution VARCHAR(100),
    degree VARCHAR(100),
    start_date DATE,
    end_date DATE
);

CREATE TABLE languages (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    level VARCHAR(50)
);

CREATE TABLE tools (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    level VARCHAR(50)
);

-- Example data
INSERT INTO experience (company, role, start_date, end_date, description)
VALUES
('GVTLabs', 'Software Engineer', '2025-08-13', '2025-09-30', 'A short and intense experience working with AI platforms to analyse video content.'),
('SUPERMASSIVE', 'Creative Tech', '2025-03-09', '2025-08-10', 'Supported the development and deployment of an electronic art exhibition.'),
('Tame Demons', 'Owner', '2020-02-12', '2025-03-09', 'Launched and ran a successful independent creative business, blending physical craft with digital outreach.'),
('Diamond Light Source', 'Full Stack Developer', '2017-01-21', '2020-02-11', 'Worked on scientific instrumentation software at the UK national synchrotron facility.'),
('DataSift', 'Software Engineer', '2015-08-15', '2016-10-21', 'Contributed to large-scale data ingestion and analysis systems, adapting to different teams and tasks as necessary.');

INSERT INTO education (institution, degree, start_date, end_date)
VALUES
('University of Reading', 'Cybernetics', '2011-09-11', '2015-07-01');

INSERT INTO languages (name, level)
VALUES
('Java', 'Core'),
('Python', 'Core'),
('C++', 'Core'),
('Scala', 'Core'),
('JavaScript', 'Additional'),
('HTML/CSS', 'Additional'),
('SQL', 'Additional'),
('Bash', 'Additional');

INSERT INTO tools (name, level)
VALUES
('Git', 'Core'),
('Docker', 'Core'),
('RabbitMQ', 'Core'),
('AWS', 'Additional'),
('Jenkins', 'Additional'),
('Linux', 'Core'),
('PostGreSQL', 'Core'),
('Redis', 'Additional'),
('Laravel', 'Additional'),
('SpringBoot', 'Additional'),
('Grafana', 'Additional'),
('Prometheus', 'Additional');