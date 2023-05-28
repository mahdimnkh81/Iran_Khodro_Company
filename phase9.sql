CREATE LOGIN john_doe WITH PASSWORD = 'johndoe2000johndoe'
CREATE USER john_doe FROM LOGIN john_doe;
GRANT SELECT ON SCHEMA :: [dbo] TO john_doe