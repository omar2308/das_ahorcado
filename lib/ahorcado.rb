class Ahorcado
    def initialize(palabra)
        @palabra = palabra
    end
        
    def palabra()
        @palabra
    end

    def adivinar(letra)
        return @palabra == letra
    end
end