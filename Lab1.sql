CREATE TABLE Диск ( 
Код_диску INTEGER NOT NULL, 
Назва VARCHAR(50) NOT NULL, 
Фото VARCHAR(50),
Ціна MONEY NOT NULL CHECK(Ціна > 0),
Дата_випуску DATE NOT NULL,
Текст_опису VARCHAR(255),
PRIMARY KEY (Код_диску) ); 

CREATE TABLE Жанр ( 
Код_жанру INTEGER NOT NULL, 
Назва VARCHAR(15) NOT NULL, 
Напрям VARCHAR(30),
Дата_зародження DATE NOT NULL,
Місце_зародження VARCHAR(50),
Опис_жанру VARCHAR(255),
PRIMARY KEY (Код_жанру) ); 

CREATE TABLE Пісня ( 
Код_пісні INTEGER NOT NULL, 
Назва VARCHAR(50) NOT NULL, 
Тривалість INTEGER NOT NULL CHECK(Тривалість > 0),
Жанр INTEGER NOT NULL,
Дата_випуску DATE NOT NULL,
PRIMARY KEY (Код_пісні),
CONSTRAINT ФКжанр FOREIGN KEY (Жанр)
REFERENCES Жанр(Код_жанру) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE Соліст( 
Код_соліста INTEGER NOT NULL, 
[Ім’я] VARCHAR(30) NOT NULL, 
Прізвище VARCHAR(30),
Псевдонім VARCHAR(30),
Дата_народження DATE NOT NULL,
Країна_народження VARCHAR(30),
Мова_виконання VARCHAR(20),
Фото VARCHAR(50),
Посилання VARCHAR(100),
PRIMARY KEY (Код_соліста) ); 

CREATE TABLE Група ( 
Код_групи INTEGER NOT NULL, 
Назва VARCHAR(50) NOT NULL, 
Дата_заснування DATE,
Країна_заснування VARCHAR(30) NOT NULL, 
Мова_виконання VARCHAR(30) NOT NULL, 
Посилання VARCHAR(100),
PRIMARY KEY (Код_групи) ); 

CREATE TABLE Учасник_групи ( 
Код_учасника INTEGER NOT NULL, 
[Ім’я] VARCHAR(30) NOT NULL,  
Прізвище VARCHAR(30) NOT NULL,  
Дата_народження DATE NOT NULL,  
Країна_народження VARCHAR(30),
Код_групи INTEGER NOT NULL,
Фото VARCHAR(50),
Посилання VARCHAR(100),
PRIMARY KEY (Код_учасника) ); 

CREATE TABLE Контракт(
Код_контракту  INTEGER NOT NULL,
 Код_групи INTEGER NOT NULL,
 Код_учасника INTEGER NOT NULL,
 Дата_заключення DATE NOT NULL,
 Дата_закінчення DATE NOT NULL,
 Роль_в_групі VARCHAR(15),
 PRIMARY KEY (Код_контракту ),
 CONSTRAINT ФК_група_
 FOREIGN KEY (Код_групи  )
 REFERENCES Група
 ON DELETE CASCADE
 ON UPDATE CASCADE,
 CONSTRAINT ФК_учасник_групи
 FOREIGN KEY (Код_учасника )
 REFERENCES Учасник_групи
 ON DELETE CASCADE
 ON UPDATE CASCADE,
);

CREATE TABLE Каталог ( 
Код_каталогу INTEGER NOT NULL, 
Назва_каталогу VARCHAR(30) NOT NULL,  
Дата_створення DATE NOT NULL,
Код_диску INTEGER NOT NULL, 
Код_пісні INTEGER NOT NULL, 
Код_соліста INTEGER,
Код_групи INTEGER,
PRIMARY KEY (Код_каталогу),
CONSTRAINT ФК_диск FOREIGN KEY (Код_диску)
REFERENCES Диск ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ФК_пісня FOREIGN KEY (Код_пісні)
REFERENCES Пісня ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ФК_соліст FOREIGN KEY (Код_соліста)
REFERENCES Соліст ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ФК_група FOREIGN KEY (Код_групи)
REFERENCES Група ON DELETE CASCADE ON UPDATE CASCADE);
