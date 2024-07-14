-- create a stored procedure that computes and stores
-- the average score of a student
DELIMITER // ;
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id int)
BEGIN
	SELECT users.id, users.name, AVG(corrections.score) AS average_score
	FROM users
	INNER JOIN corrections
	ON corrections.user_id = users.id
	WHERE users.id = user_id
	GROUP BY users.id, users.name;
END //
delimiter ;
