require 'mysql_connector.rb'

class Item 
    attr_reader :id, :name, :price, :category
    def initialize(id, name, price, category:nil)
        @id = id
        @name = name
        @price = price
        @category = category
    end

    def get_all_items
        client.create_db_client
        client.query("SELECT * FROM orders")
        orders= Array.new
        raw_data.each do |order|
            orders.push(Order.new)
        end
        orders
    end

    def create_item
    end

    def save
        return false unless valid?

        client= create_db_client
        client.query("INSERT INTO orders(reference_no,customer_name,date) VALUES('#{reference_no}','#{customer_name}', '#{date}')")
    end

    def valid?
        return false if @reference_no.nil?
        return false if @customer_name.nil?
        return false if @date.nil?
        true
    end
    
end