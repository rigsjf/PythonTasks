# Enunciado
# Crie uma classe Bola cujos atributos são cor e raio. Crie um método que imprime a cor da bola. Crie um método para calcular a área
#  dessa bola. Crie um método para calcular o volume da bola. Crie um objeto dessa classe e calcule a área e o volume, imprimindo 
# ambos em seguida.
# Obs.:
# Área da esfera = 4*3.14*r*r;
# Volume da esfera = 4*3.14*r*r*r/3

class Bola:
    def __init__(self, cor, raio):
        self.cor = cor
        self.raio = raio

    def calculaArea(self):
        self.area = 4*3.14*self.raio*self.raio

bola_1 = Bola('branca',12)
bola_1.__dict__