class Dog
    attr_accessor :nombre, :raza, :color
    
    def initialize(nombre, raza, color)
        @nombre = nombre
        @raza = raza
        @color = color
    end

    def ladrar
        puts "#{@nombre[1]} está ladrando"
    end

end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

dog = Dog.new(*propiedades)
dog.ladrar

