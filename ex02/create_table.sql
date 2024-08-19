CREATE TABLE data_2022_dec (
event_time TIMESTAMP,
event_type VARCHAR(255),
product_id SERIAL,
price DECIMAL,
user_id SERIAL,
user_session VARCHAR(36));

COPY data_2022_dec(event_time,event_type,product_id,price,user_id,user_session)
FROM '/opt/customer/data_2022_dec.csv'
DELIMITER ','
CSV HEADER;
