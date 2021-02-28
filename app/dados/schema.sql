DROP TABLE IF EXISTS Pessoa;

CREATE TABLE Pessoa (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT NULL,
  sobrenome TEXT NOT NULL
);

DROP TABLE IF EXISTS Sala;

CREATE TABLE Sala (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT NULL,
  lotacao INTEGER NOT NULL
);

DROP TABLE IF EXISTS Espaco;

CREATE TABLE Espaco (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT NULL,
  lotacao INTEGER NOT NULL
);

DROP TABLE IF EXISTS SalaPessoa;

CREATE TABLE SalaPessoa (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  id_sala INTEGER NOT NULL,
  id_pessoa INTEGER NOT NULL,
  etapa INTEGER NOT NULL,  
  CONSTRAINT FK_id_sala FOREIGN KEY (id_sala) REFERENCES Sala (id),   
  CONSTRAINT FK_id_pessoa FOREIGN KEY (id_pessoa) REFERENCES Pessoa (id)
);

DROP TABLE IF EXISTS EspacoPessoa;

CREATE TABLE EspacoPessoa (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  id_espaco INTEGER NOT NULL,
  id_pessoa INTEGER NOT NULL,
  intervalo INTEGER NOT NULL,
  
  CONSTRAINT FK_id_espaco FOREIGN KEY (id_espaco) REFERENCES Espaco (id),   
  CONSTRAINT FK_id_pessoa FOREIGN KEY (id_pessoa) REFERENCES Pessoa (id)

)