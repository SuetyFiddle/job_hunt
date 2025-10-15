/*---------------------
Create tables
----------------------*/

CREATE TABLE experience (
    id SERIAL PRIMARY KEY,
    company VARCHAR(100),
    role VARCHAR(100),
    start_date DATE,
    end_date DATE,
    description TEXT
);

CREATE TABLE responsibilities (
  id SERIAL PRIMARY KEY,
  experience_id INT REFERENCES experience(id) ON DELETE CASCADE,
  text TEXT
);

CREATE TABLE education (
    id SERIAL PRIMARY KEY,
    institution VARCHAR(50),
    degree VARCHAR(50),
    result VARCHAR(50),
    start_date DATE,
    end_date DATE,
    description TEXT
);

CREATE TABLE languages (
    id SERIAL PRIMARY KEY,
    name VARCHAR(12),
    level VARCHAR(12)
);

CREATE TABLE tools (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    level VARCHAR(12)
);

/*---------------------
Set up experience data
----------------------*/

-- GVTLabs
WITH gvtlabs AS (
  INSERT INTO experience (company, role, start_date, end_date, description)
  VALUES ('GVTLabs', 'Software Engineer', '2025-08-13', '2025-09-30', 'A short and intense experience working with AI platforms to analyse video content.')
    RETURNING id
)
INSERT INTO responsibilities (experience_id, text)
VALUES
((SELECT id FROM gvtlabs), 'Improved logging and metrics in order to provide better platform oversight.'),
((SELECT id FROM gvtlabs), 'Designed and implemented local development and debugging environments using Docker to standardise team workflows.'),
((SELECT id FROM gvtlabs), 'Contributed to the SRE Admin web application, integrating multiple databases and delivering functional UI within 24 hours despite unfamiliar tech stack.');

-- SUPERMASSIVE
WITH supermassive AS (
  INSERT INTO experience (company, role, start_date, end_date, description)
  VALUES ('SUPERMASSIVE', 'Creative Tech', '2025-03-09', '2025-08-10', 'Supported the development and deployment of an electronic art exhibition.')
    RETURNING id
)
INSERT INTO responsibilities (experience_id, text)
VALUES
((SELECT id FROM supermassive), 'Contributed to all phases of the show build, from embedded C++ programming and electronics wiring to hardware integration and physical installation.'),
((SELECT id FROM supermassive), 'Improved modularity of the codebase through Object-Oriented principles, allowing developers to reuse components across multiple installations.'),
((SELECT id FROM supermassive), 'Designed and built an original interactive installation for the final exhibition');

-- Tame Demons
WITH tamedemons AS (
  INSERT INTO experience (company, role, start_date, end_date, description)
  VALUES ('Tame Demons', 'Owner', '2020-02-12', '2025-03-09', 'Launched and ran a successful independent creative business, blending physical craft with digital outreach.')
    RETURNING id
)
INSERT INTO responsibilities (experience_id, text)
VALUES
((SELECT id FROM tamedemons), 'Designed and produced bespoke leather products from scratch. Managed all aspects of the business including marketing, sales, customer service, and accounting.'),
((SELECT id FROM tamedemons), 'Created short-form video content, growing a combined social media following of over 1 million across TikTok and Instagram.');

-- Diamond Light Source
WITH diamond AS (
  INSERT INTO experience (company, role, start_date, end_date, description)
  VALUES ('Diamond Light Source', 'Full Stack Developer', '2017-01-21', '2020-02-11', 'Worked on scientific instrumentation software at the UK national synchrotron facility.')
    RETURNING id
)
INSERT INTO responsibilities (experience_id, text)
VALUES
((SELECT id FROM diamond), 'Developed and maintained control systems in Java and Python, collaborating directly with scientists and engineers.'),
((SELECT id FROM diamond), 'Led the software development for the VMXm beamline, supporting the launch of a new experimental platform.'),
((SELECT id FROM diamond), 'Onboarded new team members and mentored a junior developer.');

-- DataSift
WITH datasift AS (
  INSERT INTO experience (company, role, start_date, end_date, description)
  VALUES ('DataSift', 'Software Engineer', '2015-08-15', '2016-10-21', 'Contributed to large-scale data ingestion and analysis systems, adapting to different teams and tasks as necessary.')
    RETURNING id
)
INSERT INTO responsibilities (experience_id, text)
VALUES
((SELECT id FROM datasift), 'Maintained core C++ systems and implemented new functionality, while branching into Scala, Chef, Behat, and Grafana tooling.'),
((SELECT id FROM datasift), 'Joined a task force to optimize the streaming platform: reduced outgoing API calls and CPU usage by ~90%, while doubling data throughput.');

/*---------------------
Set up other data
----------------------*/

INSERT INTO education (institution, degree, result, start_date, end_date, description)
VALUES
('University of Reading', 'Cybernetics', 'First', '2011-09-11', '2015-07-01', 'Interdisciplinary degree with modules including: Virtual Reality, Neural Nets, Control Systems, Machine Intelligence, Bionics, Materials Science, Image Analysis, Kinematics, Swarm Intelligence, etc.');

INSERT INTO languages (name, level)
VALUES
('Java', 'Core'),
('Python', 'Core'),
('C++', 'Core'),
('Scala', 'Core'),
('JavaScript', 'Ancilliary'),
('HTML/CSS', 'Ancilliary'),
('SQL', 'Ancilliary'),
('Bash', 'Ancilliary');

INSERT INTO tools (name, level)
VALUES
('Git', 'Core'),
('Docker', 'Core'),
('RabbitMQ', 'Core'),
('AWS', 'Ancilliary'),
('Jenkins', 'Ancilliary'),
('Linux', 'Core'),
('PostGreSQL', 'Core'),
('Redis', 'Ancilliary'),
('Laravel', 'Ancilliary'),
('SpringBoot', 'Ancilliary'),
('Grafana', 'Ancilliary'),
('Prometheus', 'Ancilliary');