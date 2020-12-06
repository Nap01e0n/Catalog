CREATE TABLE ���� ( 
���_����� INTEGER NOT NULL, 
����� VARCHAR(50) NOT NULL, 
���� VARCHAR(50),
ֳ�� MONEY NOT NULL CHECK(ֳ�� > 0),
����_������� DATE NOT NULL,
�����_����� VARCHAR(255),
PRIMARY KEY (���_�����) ); 

CREATE TABLE ���� ( 
���_����� INTEGER NOT NULL, 
����� VARCHAR(15) NOT NULL, 
������ VARCHAR(30),
����_���������� DATE NOT NULL,
̳���_���������� VARCHAR(50),
����_����� VARCHAR(255),
PRIMARY KEY (���_�����) ); 

CREATE TABLE ϳ��� ( 
���_��� INTEGER NOT NULL, 
����� VARCHAR(50) NOT NULL, 
��������� INTEGER NOT NULL CHECK(��������� > 0),
���� INTEGER NOT NULL,
����_������� DATE NOT NULL,
PRIMARY KEY (���_���),
CONSTRAINT ������ FOREIGN KEY (����)
REFERENCES ����(���_�����) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE �����( 
���_������ INTEGER NOT NULL, 
[���] VARCHAR(30) NOT NULL, 
������� VARCHAR(30),
�������� VARCHAR(30),
����_���������� DATE NOT NULL,
�����_���������� VARCHAR(30),
����_��������� VARCHAR(20),
���� VARCHAR(50),
��������� VARCHAR(100),
PRIMARY KEY (���_������) ); 

CREATE TABLE ����� ( 
���_����� INTEGER NOT NULL, 
����� VARCHAR(50) NOT NULL, 
����_���������� DATE,
�����_���������� VARCHAR(30) NOT NULL, 
����_��������� VARCHAR(30) NOT NULL, 
��������� VARCHAR(100),
PRIMARY KEY (���_�����) ); 

CREATE TABLE �������_����� ( 
���_�������� INTEGER NOT NULL, 
[���] VARCHAR(30) NOT NULL,  
������� VARCHAR(30) NOT NULL,  
����_���������� DATE NOT NULL,  
�����_���������� VARCHAR(30),
���_����� INTEGER NOT NULL,
���� VARCHAR(50),
��������� VARCHAR(100),
PRIMARY KEY (���_��������) ); 

CREATE TABLE ��������(
���_���������  INTEGER NOT NULL,
 ���_����� INTEGER NOT NULL,
 ���_�������� INTEGER NOT NULL,
 ����_���������� DATE NOT NULL,
 ����_��������� DATE NOT NULL,
 ����_�_���� VARCHAR(15),
 PRIMARY KEY (���_��������� ),
 CONSTRAINT ��_�����_
 FOREIGN KEY (���_�����  )
 REFERENCES �����
 ON DELETE CASCADE
 ON UPDATE CASCADE,
 CONSTRAINT ��_�������_�����
 FOREIGN KEY (���_�������� )
 REFERENCES �������_�����
 ON DELETE CASCADE
 ON UPDATE CASCADE,
);

CREATE TABLE ������� ( 
���_�������� INTEGER NOT NULL, 
�����_�������� VARCHAR(30) NOT NULL,  
����_��������� DATE NOT NULL,
���_����� INTEGER NOT NULL, 
���_��� INTEGER NOT NULL, 
���_������ INTEGER,
���_����� INTEGER,
PRIMARY KEY (���_��������),
CONSTRAINT ��_���� FOREIGN KEY (���_�����)
REFERENCES ���� ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ��_���� FOREIGN KEY (���_���)
REFERENCES ϳ��� ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ��_����� FOREIGN KEY (���_������)
REFERENCES ����� ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ��_����� FOREIGN KEY (���_�����)
REFERENCES ����� ON DELETE CASCADE ON UPDATE CASCADE);
