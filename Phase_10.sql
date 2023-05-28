CREATE TABLE brand_logs
(
    id         INT IDENTITY(1,1) Primary key,
    brand_id   INT,
    old_name   VARCHAR(30) ,
    new_name   VARCHAR(30) ,
    changed_at Date
    
);



CREATE TRIGGER brands_insert
    ON brand_logs
    After Insert
	As	
   INSERT INTO brand_logs (brand_id, old_name, new_name, changed_at)
   select inserted.brand_id, NULL, inserted.new_name, GETDATE()
   From inserted
	
INSERT INTO brand_logs (brand_id, old_name, new_name,changed_at)
VALUES (85,'mka', 'mahdi','2023-01-26');


/****************************/

CREATE TRIGGER brands_Update
    ON brand_logs
    After UPDATE
	As	
	UPDATE  brand_logs 
    set dbo.brand_logs.brand_id=inserted.brand_id,
	dbo.brand_logs.new_name=inserted.new_name, dbo.brand_logs.changed_at=GETDATE() 
    From inserted

	
CREATE TRIGGER brands_Delete
    ON brand_logs
    After Delete
	As	
	Print 'can not delete'
    