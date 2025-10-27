
DROP TABLE Curso;

CREATE TABLE Curso (
	CodigoCurso int NOT NULL,
	Nome VARCHAR (90) NOT NULL,
	DataCriacao DATE NULL,
	CONSTRAINT CursoP PRIMARY KEY (CodigoCurso) -- Constraint é o ID INT PRIMARY KEY DO SQL
);

CREATE TABLE Disciplina (
	CodigoDisciplina INT NOT NULL,
	Nome VARCHAR (90) NOT NULL,
	CargaHoraria int NOT NULL,
	CONSTRAINT DisciplinaP PRIMARY KEY (CodigoDisciplina)
);

CREATE TABLE CursoDisciplina (
	CodigoCurso int NOT NULL,
	CodigoDisciplina int NOT NULL,
	CONSTRAINT CursoDisciplinaP PRIMARY KEY (CodigoCurso, CodigoDisciplina), -- Adiciona as duas tabelas referencias
	FOREIGN KEY (CodigoCurso) REFERENCES Curso (CodigoCurso),
	FOREIGN KEY (CodigoDisciplina) REFERENCES Disciplina (CodigoDisciplina)
);



