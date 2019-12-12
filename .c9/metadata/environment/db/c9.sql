{"filter":false,"title":"c9.sql","tooltip":"/db/c9.sql","undoManager":{"mark":11,"position":11,"stack":[[{"start":{"row":0,"column":0},"end":{"row":135,"column":0},"action":"insert","lines":["DROP SCHEMA IF EXISTS c9;","CREATE SCHEMA IF NOT EXISTS c9;","USE c9;","","CREATE TABLE Artist(","artist_id INT NOT NULL AUTO_INCREMENT,","artist_email VARCHAR(255), /* encrypted */","artist_password VARCHAR(255), /* encrypted */","artist_type ENUM(\"Tattooist\",\"Piercer\",\"Body modifier\",\"Other\"),","last_login DATETIME,","PRIMARY KEY (artist_id)",");","","CREATE TABLE Client(","client_id INT NOT NULL AUTO_INCREMENT,","client_email VARCHAR(255), /* encrypted */","client_password VARCHAR(255), /* encrypted */","last_login DATETIME,","PRIMARY KEY (client_id)",");","","CREATE TABLE Parlour( /* tattoo parlour/shop, etc.) */","parlour_id INT NOT NULL AUTO_INCREMENT,","artist_id INT,","address VARCHAR(50),","address2 VARCHAR(50),","city VARCHAR(50),","postal_code VARCHAR(10),","country VARCHAR(20),","PRIMARY KEY (parlour_id),","FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)",");","","CREATE TABLE Profile(","profile_id INT NOT NULL AUTO_INCREMENT,","prefix ENUM(\"Mr\",\"Ms\",\"Mrs\",\"Dr\",\"Fr\",\"Mx\"),","fist_name VARCHAR(50),","last_name VARCHAR(50),","date_of_birth DATE,","location VARCHAR(50),","bio VARCHAR(255),","interested_in ENUM(\"Tattoos\",\"Piercings\",\"Body mods\"),","profile_pic BLOB,","artist_id INT,","client_id INT,","PRIMARY KEY (profile_id),","FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),","FOREIGN KEY (client_id) REFERENCES Client(client_id)",");","","CREATE TABLE Messaging(","message_id INT NOT NULL AUTO_INCREMENT,","external_ref VARCHAR(255),","session_key VARCHAR(255),","artist_id INT,","client_id INT,","PRIMARY KEY (message_id),","FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),","FOREIGN KEY (client_id) REFERENCES Client(client_id)",");","","CREATE TABLE Preference(","preference_id INT NOT NULL AUTO_INCREMENT,","artist_id INT,","size1_desc VARCHAR(255),","size1_pic BLOB,","size1_price FLOAT,","size2_desc VARCHAR(255),","size2_pic BLOB,","size2_price FLOAT,","size3_desc VARCHAR(255),","size3_pic BLOB,","size3_price FLOAT,","PRIMARY KEY (preference_id),","FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)",");","","CREATE TABLE ArtistPage(","page_id INT NOT NULL AUTO_INCREMENT,","artist_id INT,","parlour_id INT,","headline VARCHAR(50),","rating_average FLOAT,","total_ratings INT,","shop_picture BLOB, ","total_price FLOAT,","PRIMARY KEY (page_id),","FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),","FOREIGN KEY (parlour_id) REFERENCES Parlour(parlour_id)",");","","CREATE TABLE Comment(","comment_id INT NOT NULL AUTO_INCREMENT,","comment_text VARCHAR(255),","page_id INT,","artist_id INT,","client_id INT,","PRIMARY KEY (comment_id),","FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),","FOREIGN KEY (client_id) REFERENCES Client(client_id),","FOREIGN KEY (page_id) REFERENCES ArtistPage(page_id)",");","","CREATE TABLE Booking(","booking_id INT NOT NULL AUTO_INCREMENT,","date DATE,","time TIME,","artist_id INT,","client_id INT,","parlour_id INT,","preference_id INT,","description VARCHAR(255),","getting ENUM(\"Tattoo\",\"Piercing\",\"Body mod\"),","ref_pic BLOB,","PRIMARY KEY (booking_id),","FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),","FOREIGN KEY (client_id) REFERENCES Client(client_id),","FOREIGN KEY (parlour_id) REFERENCES Parlour(parlour_id),","FOREIGN KEY (preference_id) REFERENCES Preference(preference_id)",");","","CREATE TABLE Payment(","payment_id INT NOT NULL AUTO_INCREMENT,","external_ref VARCHAR(255),","booking_id INT,","artist_id INT,","client_id INT,","PRIMARY KEY (payment_id),","FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),","FOREIGN KEY (client_id) REFERENCES Client(client_id),","FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)",");","","","",""],"id":1}],[{"start":{"row":122,"column":0},"end":{"row":122,"column":4},"action":"insert","lines":["    "],"id":2},{"start":{"row":123,"column":0},"end":{"row":123,"column":4},"action":"insert","lines":["    "]},{"start":{"row":124,"column":0},"end":{"row":124,"column":4},"action":"insert","lines":["    "]},{"start":{"row":125,"column":0},"end":{"row":125,"column":4},"action":"insert","lines":["    "]},{"start":{"row":126,"column":0},"end":{"row":126,"column":4},"action":"insert","lines":["    "]},{"start":{"row":127,"column":0},"end":{"row":127,"column":4},"action":"insert","lines":["    "]},{"start":{"row":128,"column":0},"end":{"row":128,"column":4},"action":"insert","lines":["    "]},{"start":{"row":129,"column":0},"end":{"row":129,"column":4},"action":"insert","lines":["    "]},{"start":{"row":130,"column":0},"end":{"row":130,"column":4},"action":"insert","lines":["    "]},{"start":{"row":131,"column":0},"end":{"row":131,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":131,"column":0},"end":{"row":131,"column":4},"action":"remove","lines":["    "],"id":3}],[{"start":{"row":104,"column":0},"end":{"row":104,"column":4},"action":"insert","lines":["    "],"id":4},{"start":{"row":105,"column":0},"end":{"row":105,"column":4},"action":"insert","lines":["    "]},{"start":{"row":106,"column":0},"end":{"row":106,"column":4},"action":"insert","lines":["    "]},{"start":{"row":107,"column":0},"end":{"row":107,"column":4},"action":"insert","lines":["    "]},{"start":{"row":108,"column":0},"end":{"row":108,"column":4},"action":"insert","lines":["    "]},{"start":{"row":109,"column":0},"end":{"row":109,"column":4},"action":"insert","lines":["    "]},{"start":{"row":110,"column":0},"end":{"row":110,"column":4},"action":"insert","lines":["    "]},{"start":{"row":111,"column":0},"end":{"row":111,"column":4},"action":"insert","lines":["    "]},{"start":{"row":112,"column":0},"end":{"row":112,"column":4},"action":"insert","lines":["    "]},{"start":{"row":113,"column":0},"end":{"row":113,"column":4},"action":"insert","lines":["    "]},{"start":{"row":114,"column":0},"end":{"row":114,"column":4},"action":"insert","lines":["    "]},{"start":{"row":115,"column":0},"end":{"row":115,"column":4},"action":"insert","lines":["    "]},{"start":{"row":116,"column":0},"end":{"row":116,"column":4},"action":"insert","lines":["    "]},{"start":{"row":117,"column":0},"end":{"row":117,"column":4},"action":"insert","lines":["    "]},{"start":{"row":118,"column":0},"end":{"row":118,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":92,"column":0},"end":{"row":92,"column":4},"action":"insert","lines":["    "],"id":5},{"start":{"row":93,"column":0},"end":{"row":93,"column":4},"action":"insert","lines":["    "]},{"start":{"row":94,"column":0},"end":{"row":94,"column":4},"action":"insert","lines":["    "]},{"start":{"row":95,"column":0},"end":{"row":95,"column":4},"action":"insert","lines":["    "]},{"start":{"row":96,"column":0},"end":{"row":96,"column":4},"action":"insert","lines":["    "]},{"start":{"row":97,"column":0},"end":{"row":97,"column":4},"action":"insert","lines":["    "]},{"start":{"row":98,"column":0},"end":{"row":98,"column":4},"action":"insert","lines":["    "]},{"start":{"row":99,"column":0},"end":{"row":99,"column":4},"action":"insert","lines":["    "]},{"start":{"row":100,"column":0},"end":{"row":100,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":78,"column":0},"end":{"row":78,"column":4},"action":"insert","lines":["    "],"id":6},{"start":{"row":79,"column":0},"end":{"row":79,"column":4},"action":"insert","lines":["    "]},{"start":{"row":80,"column":0},"end":{"row":80,"column":4},"action":"insert","lines":["    "]},{"start":{"row":81,"column":0},"end":{"row":81,"column":4},"action":"insert","lines":["    "]},{"start":{"row":82,"column":0},"end":{"row":82,"column":4},"action":"insert","lines":["    "]},{"start":{"row":83,"column":0},"end":{"row":83,"column":4},"action":"insert","lines":["    "]},{"start":{"row":84,"column":0},"end":{"row":84,"column":4},"action":"insert","lines":["    "]},{"start":{"row":85,"column":0},"end":{"row":85,"column":4},"action":"insert","lines":["    "]},{"start":{"row":86,"column":0},"end":{"row":86,"column":4},"action":"insert","lines":["    "]},{"start":{"row":87,"column":0},"end":{"row":87,"column":4},"action":"insert","lines":["    "]},{"start":{"row":88,"column":0},"end":{"row":88,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":62,"column":0},"end":{"row":62,"column":4},"action":"insert","lines":["    "],"id":7},{"start":{"row":63,"column":0},"end":{"row":63,"column":4},"action":"insert","lines":["    "]},{"start":{"row":64,"column":0},"end":{"row":64,"column":4},"action":"insert","lines":["    "]},{"start":{"row":65,"column":0},"end":{"row":65,"column":4},"action":"insert","lines":["    "]},{"start":{"row":66,"column":0},"end":{"row":66,"column":4},"action":"insert","lines":["    "]},{"start":{"row":67,"column":0},"end":{"row":67,"column":4},"action":"insert","lines":["    "]},{"start":{"row":68,"column":0},"end":{"row":68,"column":4},"action":"insert","lines":["    "]},{"start":{"row":69,"column":0},"end":{"row":69,"column":4},"action":"insert","lines":["    "]},{"start":{"row":70,"column":0},"end":{"row":70,"column":4},"action":"insert","lines":["    "]},{"start":{"row":71,"column":0},"end":{"row":71,"column":4},"action":"insert","lines":["    "]},{"start":{"row":72,"column":0},"end":{"row":72,"column":4},"action":"insert","lines":["    "]},{"start":{"row":73,"column":0},"end":{"row":73,"column":4},"action":"insert","lines":["    "]},{"start":{"row":74,"column":0},"end":{"row":74,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":51,"column":0},"end":{"row":51,"column":4},"action":"insert","lines":["    "],"id":8},{"start":{"row":52,"column":0},"end":{"row":52,"column":4},"action":"insert","lines":["    "]},{"start":{"row":53,"column":0},"end":{"row":53,"column":4},"action":"insert","lines":["    "]},{"start":{"row":54,"column":0},"end":{"row":54,"column":4},"action":"insert","lines":["    "]},{"start":{"row":55,"column":0},"end":{"row":55,"column":4},"action":"insert","lines":["    "]},{"start":{"row":56,"column":0},"end":{"row":56,"column":4},"action":"insert","lines":["    "]},{"start":{"row":57,"column":0},"end":{"row":57,"column":4},"action":"insert","lines":["    "]},{"start":{"row":58,"column":0},"end":{"row":58,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":34,"column":0},"end":{"row":34,"column":4},"action":"insert","lines":["    "],"id":9},{"start":{"row":35,"column":0},"end":{"row":35,"column":4},"action":"insert","lines":["    "]},{"start":{"row":36,"column":0},"end":{"row":36,"column":4},"action":"insert","lines":["    "]},{"start":{"row":37,"column":0},"end":{"row":37,"column":4},"action":"insert","lines":["    "]},{"start":{"row":38,"column":0},"end":{"row":38,"column":4},"action":"insert","lines":["    "]},{"start":{"row":39,"column":0},"end":{"row":39,"column":4},"action":"insert","lines":["    "]},{"start":{"row":40,"column":0},"end":{"row":40,"column":4},"action":"insert","lines":["    "]},{"start":{"row":41,"column":0},"end":{"row":41,"column":4},"action":"insert","lines":["    "]},{"start":{"row":42,"column":0},"end":{"row":42,"column":4},"action":"insert","lines":["    "]},{"start":{"row":43,"column":0},"end":{"row":43,"column":4},"action":"insert","lines":["    "]},{"start":{"row":44,"column":0},"end":{"row":44,"column":4},"action":"insert","lines":["    "]},{"start":{"row":45,"column":0},"end":{"row":45,"column":4},"action":"insert","lines":["    "]},{"start":{"row":46,"column":0},"end":{"row":46,"column":4},"action":"insert","lines":["    "]},{"start":{"row":47,"column":0},"end":{"row":47,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":22,"column":0},"end":{"row":22,"column":4},"action":"insert","lines":["    "],"id":10},{"start":{"row":23,"column":0},"end":{"row":23,"column":4},"action":"insert","lines":["    "]},{"start":{"row":24,"column":0},"end":{"row":24,"column":4},"action":"insert","lines":["    "]},{"start":{"row":25,"column":0},"end":{"row":25,"column":4},"action":"insert","lines":["    "]},{"start":{"row":26,"column":0},"end":{"row":26,"column":4},"action":"insert","lines":["    "]},{"start":{"row":27,"column":0},"end":{"row":27,"column":4},"action":"insert","lines":["    "]},{"start":{"row":28,"column":0},"end":{"row":28,"column":4},"action":"insert","lines":["    "]},{"start":{"row":29,"column":0},"end":{"row":29,"column":4},"action":"insert","lines":["    "]},{"start":{"row":30,"column":0},"end":{"row":30,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":14,"column":0},"end":{"row":14,"column":4},"action":"insert","lines":["    "],"id":11},{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"insert","lines":["    "]},{"start":{"row":16,"column":0},"end":{"row":16,"column":4},"action":"insert","lines":["    "]},{"start":{"row":17,"column":0},"end":{"row":17,"column":4},"action":"insert","lines":["    "]},{"start":{"row":18,"column":0},"end":{"row":18,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":5,"column":0},"end":{"row":5,"column":4},"action":"insert","lines":["    "],"id":12},{"start":{"row":6,"column":0},"end":{"row":6,"column":4},"action":"insert","lines":["    "]},{"start":{"row":7,"column":0},"end":{"row":7,"column":4},"action":"insert","lines":["    "]},{"start":{"row":8,"column":0},"end":{"row":8,"column":4},"action":"insert","lines":["    "]},{"start":{"row":9,"column":0},"end":{"row":9,"column":4},"action":"insert","lines":["    "]},{"start":{"row":10,"column":0},"end":{"row":10,"column":4},"action":"insert","lines":["    "]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":9,"column":21},"end":{"row":9,"column":21},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1575885192435,"hash":"54ceadd543c113b0ead99812298e3552eaec0db8"}