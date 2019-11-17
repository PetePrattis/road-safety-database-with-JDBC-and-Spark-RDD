Create Table before_2010 () Inherits (accident_information); 
Create Table after_2010 () Inherits (accident_information); 
Create Index before_2010_index On before_2010 (date); 
Create Index after_2010_index On after_2010 (date); 
CREATE OR REPLACE FUNCTION year_insert_trigger() 
RETURNS TRIGGER AS $$ 
BEGIN 
IF (NEW.date < '2010-01-01') THEN 
INSERT INTO before_2010 VALUES (NEW.*); 
ELSIF (NEW.year >= '2010-01-01') THEN 
INSERT INTO after_2010 VALUES (NEW.*); 
ELSE 
RAISE EXCEPTION 'We are in a time paradox'; 
END IF; 
RETURN NULL; 
END; 
$$ LANGUAGE 
plpgsql; 
CREATE trigger partition_insert before insert on accident_information for each 
row execute procedure year_insert_trigger();