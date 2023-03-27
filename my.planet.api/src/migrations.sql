CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	username VARCHAR(45) NOT NULL,
	email VARCHAR(200) UNIQUE NOT NULL,
	password VARCHAR(100) NOT NULL,
	description VARCHAR(100) default '',
	img VARCHAR(100) default '',
	permission CHAR(1) NOT NULL DEFAULT 'u'
);

CREATE TABLE personal_work (
	id_personal_work SERIAL PRIMARY KEY,
	personal_work_name VARCHAR(55) NOT NULL,
	description VARCHAR(100) NOT NULL,
	img VARCHAR(100) default '',
	link VARCHAR(250) NOT NULL,
	id_user INT NOT NULL,
	FOREIGN KEY (id_user) REFERENCES users (id) on delete cascade
);

CREATE TABLE media_personal_work (
	id_media SERIAL PRIMARY KEY,
	img VARCHAR(100) default '',
	first_video VARCHAR(250),
	second_video VARCHAR(250),
  id_personal_work INT NOT NULL,
	FOREIGN KEY (id_personal_work) REFERENCES personal_work (id_personal_work) on delete cascade
);

INSERT INTO users
(username, email, password, description, permission)
VALUES
('adm', 'adm@email.vale', '$2a$10$F0zsO.qKbpTOixSPAWny6.U/wCzzqNBbxwMP7.TEznXl5nhe5ntNm',
'Administrador do sistma', 'a');