class Product
    attr_accessor :name, :price
    def initialize(name, *price)
        @name = name
        @price = price.map(&:to_i)
    end
 
    def promedio
        @price.sum / @price.count.to_f
    end
end

products_list = []
data = []
file = File.open('catalogo.txt', 'r') 
data = file.readlines
file.close

data.each do |prod|
    ls = prod.split(', ')
    products_list << Product.new(*ls)
end


products_list.each do |list|
    puts list.name
    puts list.promedio
end