USE vk;

DROP TABLE IF EXISTS song_name;
CREATE TABLE song_name (
	id SERIAL,
	song_name VARCHAR(100) NOT NULL,
	
	INDEX idx_song_name(song_name)
) COMMENT 'song_name';

DROP TABLE IF EXISTS song_data;
CREATE TABLE song_data (
	id_data BIGINT UNSIGNED NOT NULL PRIMARY KEY,
	song_artist VARCHAR(100) NOT NULL,
	song_album VARCHAR(100) NOT NULL,
	
	INDEX idx_song_data(id_data)
) COMMENT 'song_data';

ALTER TABLE song_data ADD CONSTRAINT id_data
FOREIGN KEY (id_data) REFERENCES song_name(id);

ALTER TABLE song_data ADD COLUMN song_bitrate INT;
ALTER TABLE song_data ADD COLUMN song_date INT;
ALTER TABLE song_data MODIFY COLUMN song_date DATE;
ALTER TABLE song_data ADD COLUMN song_added_date DATETIME DEFAULT NOW();
