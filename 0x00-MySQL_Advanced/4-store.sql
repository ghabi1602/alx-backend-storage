-- creates a trigger that decreases the quantity of an item
-- after adding a new order
DELIMITER //
CREATE TRIGGER store AFTER INSERT ON ORDER
FOR EACH ROW
	BEGIN
		UPDATE items
		SET quantity = quantity - NEW.number
		WHERE NEW.item_name == name
	END;
DELIMITER ;
