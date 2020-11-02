class Ahorcado
    def initialize(palabra)
        @palabra = palabra
        @intentos = 3
    end
        
    def palabra()
        @palabra
    end

    def adivinar(letra)
        if @palabra != letra then
            @intentos = @intentos -1            
        end
        return @palabra == letra
    end

    def estado?
        if @intentos == 0 then
            return -1
        else
            return 1    
        end
    end
end