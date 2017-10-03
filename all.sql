create table if not exists sample_data(
    id int not null auto_increment,
    data int, 
    primary key(id) 
);

LOAD DATA INFILE '/root/update_data_test/one.csv' INTO TABLE sample_data
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;