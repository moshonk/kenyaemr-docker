create user 'drono'@'%' identified by 'Admin123';
grant all privileges on *.* to 'drono'@'%';
grant all privileges on *.* to 'openmrs'@'%';
flush privileges;
