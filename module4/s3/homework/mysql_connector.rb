require 'mysql2'


def create_db_client
    client = Mysql2::Client.new(
        :host => "localhost",
        :username => "root",
        :password => "",
        :database => 
    )
    client
end

CREATE TABLE 'orders'(
    'reference_no' varchar(255) NOT NULL,
    'customer_name' varchar(255) DEFAULT NULL,
    'date' varchar(100) DEFAULT NULL,
    PRIMARY KEY('reference_no')
);