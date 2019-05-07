class Product
    attr_accessor :name, :price
    def initialize(name, *price)
        @name = name
        @price = price.map(&:to_i)
    end
 
    def promedio
        @price.sum / @price.count.to_f
    end

    def nuevo_catalogo(data)
        filtro = []
        data.each do |dato|
            ls = dato.split(',')
            filtro.push ls[0..ls.count-2]
        end
    
        file = []
        filtro.each do |filt|
            file << filt.join(",")
        end
        File.write('nuevo_catalogo.txt', file.join("\n"))
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


list = Product.new(data)
list.nuevo_catalogo(data)