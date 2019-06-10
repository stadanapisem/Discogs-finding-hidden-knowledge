	CREATE TABLE artist
	(
		id INT PRIMARY KEY,
		artist_name VARCHAR(90),
		sites VARCHAR(500),
		unique(artist_name)
	);

	create table album
	(
		id INT PRIMARY KEY AUTO_INCREMENT,
		artist_id INT NOT NULL,
		album_name VARCHAR(90) NOT NULL,
		versions INT not null,
		released DATE default NULL,
		country VARCHAR(60),
        	rating FLOAT default NULL,
		format VARCHAR(100) default NULL,
		foreign key fk_id(artist_id)
		references artist(id)
	);

	CREATE TABLE album_style
	(
		id INT AUTO_INCREMENT PRIMARY KEY,
		album_id INT NOT NULL,
		style VARCHAR(40),
		FOREIGN KEY fk_id(album_id)
		REFERENCES album(id),
		unique(album_id, style)
	);

	CREATE TABLE album_genre
	(
		id INT AUTO_INCREMENT PRIMARY KEY,
		album_id INT NOT NULL,
		genre VARCHAR(40),
		FOREIGN KEY fk_id(album_id)
		REFERENCES album(id),
		unique(album_id, genre)
	);

	CREATE TABLE track_list
	(
		id INT AUTO_INCREMENT PRIMARY KEY,
		album_id INT NOT NULL,
		track_name VARCHAR(300),
        	duration INT,
		FOREIGN KEY fk_id(album_id)
		REFERENCES album(id),
		unique(album_id, track_name)
	);

	CREATE TABLE album_vocals
	(
		album_id INT NOT NULL,
		artist_id INT NOT NULL,
		FOREIGN KEY fk_id(album_id)
		REFERENCES album(id),
        	FOREIGN KEY fk_id(artist_id)
		REFERENCES artist(id),
		primary key(album_id, artist_id)
	);

    CREATE TABLE album_other
	(
		album_id INT NOT NULL,
		artist_id INT NOT NULL,
		FOREIGN KEY fk_id(album_id)
		REFERENCES album(id),
        	FOREIGN KEY fk_id(artist_id)
		REFERENCES artist(id),
		primary key(album_id, artist_id)
	);
	
	CREATE TABLE track_lyrics
	(
		track_id INT AUTO_INCREMENT,
		artist_id INT NOT NULL,
        	FOREIGN KEY fk_id(artist_id)
		REFERENCES artist(id),
		primary key(track_id, artist_id)
	);
	
	CREATE TABLE track_arrangement 
	(
		track_id INT AUTO_INCREMENT,
		artist_id INT NOT NULL,
        	FOREIGN KEY fk_id(artist_id)
		REFERENCES artist(id),
		primary key(track_id, artist_id)
	);
	
	CREATE TABLE track_music 
	(
		track_id INT AUTO_INCREMENT,
		artist_id INT NOT NULL,
        	FOREIGN KEY fk_id(artist_id)
		REFERENCES artist(id),
		primary key(track_id, artist_id)
	);
