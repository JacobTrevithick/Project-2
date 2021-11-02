CREATE TABLE user_info(
	user_id INT,
	username TEXT,
	partnered BOOLEAN,
	mature BOOLEAN,
	language TEXT,
	PRIMARY KEY (user_id)
);

CREATE TABLE earnings(
	user_id INT,
	username TEXT,
	gross_earnings DECIMAL,
	FOREIGN KEY (user_id) REFERENCES user_info(user_id)
);

CREATE TABLE user_stats(
	user_id INT,
	watch_time BIGINT,
	stream_time BIGINT,
	peak_viewers INT,
	avg_viewers INT,
	followers BIGINT,
	followers_gained BIGINT,
	views_gained BIGINT,
	FOREIGN KEY (user_id) REFERENCES user_info(user_id)
);


-- SELECT e.gross_earnings, e.user_id, ui.partnered FROM earnings as e
-- JOIN user_info as ui ON e.user_id = ui.user_id;




	