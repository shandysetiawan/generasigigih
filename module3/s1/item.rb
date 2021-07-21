class Item 
    attr_reader :id, :name, :price, :category
    def initialize(id, name, price, category:nil)
        @id = id
        @name = name
        @price = price
        @category = category
    end
end


#        <% item.each do |item| %>
#     <tr>
#        <td><a href="/item/<%= item[i].id %>/edit"><button>Edit</button></a></td>
#     </tr>
#     <% end %>
#        <% items.each do |item| %>
#     <tr>
#        <td><a href="/item/<%= item[i].id %>/delete"><button>Delete</button></a></td>
#     </tr>
#     <% end %>