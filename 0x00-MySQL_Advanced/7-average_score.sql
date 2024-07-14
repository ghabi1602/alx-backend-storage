-- create a stored procedure that computes and stores
-- the average score of a student
DELIMITER // ;
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id int)
BEGIN
	UPDATE users;
	SET users.average_score=(
		SELECT AVG(score) FROM corrections
		WHERE corrections.user_id=user_id)
	WHERE id=user_id;
END;//
delimiter ;
