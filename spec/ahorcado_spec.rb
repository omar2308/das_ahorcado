require './lib/ahorcado'

describe Ahorcado do
    it "Agregar palabra por adivinar" do
        letra = "A"
        ahorcado= Ahorcado.new(letra)
        expect(ahorcado.palabra).to eq "A"
    end

    it "Adivinar una letra correcta" do
        letra = "A"
        ahorcado= Ahorcado.new(letra)
        expect(ahorcado.adivinar(letra)).to eq true
    end 

    it "Adivinar una letra incorrecta" do
        letra = "B"
        ahorcado= Ahorcado.new('A')
        expect(ahorcado.adivinar(letra)).to eq false
    end 

    it "3 intentos y fallo" do
        ahorcado= Ahorcado.new('A')
        ahorcado.adivinar('B')
        ahorcado.adivinar('C')
        ahorcado.adivinar('D')
        expect(ahorcado.estado?).to eq -1
    end

    it "2 intentos y ganaste" do
        ahorcado= Ahorcado.new('A')
        ahorcado.adivinar('B')
        ahorcado.adivinar('A')
        expect(ahorcado.estado?).to eq 1
    end 
end  