// ignore_for_file: avoid_print

/*class StateA {
  void execute(Context context) {
    print('Executando Estado A');
    context.state = StateB();
  }
}

class StateB {
  void execute(Context context) {
    print('Executando Estado B');
    context.state = StateA();
  }
}

class Context {
  var state;

  Context(this.state);

  void request() {
    state.execute(this);
  }
}

void main() {
  var context = Context(StateA());

  context.request();
  context.request();
  context.request();
  context.request();
  context.state = StateB();
  context.request();

}*/

// Estado 
abstract class EstadoAparelhoSom {
  void ligar();
  void desligar();
  void reproduzir();
  void pausar();
}

// Estado Concreto: Desligado
class EstadoAparelhoSomDesligado implements EstadoAparelhoSom {
  @override
  void ligar() {
    print("Ligando o aparelho de som...");
  }

  @override
  void desligar() {
    print("Desligando o aparelho de som...");
  }

  @override
  void reproduzir() {
    print("Não é possível reproduzir, o aparelho está desligado.");
  }

  @override
  void pausar() {
    print("Não é possível pausar, o aparelho está desligado.");
  }
}

// Estado Concreto: Modo Pendrive
class EstadoModoPendrive implements EstadoAparelhoSom {
  @override
  void ligar() {
    print("O aparelho já está ligado no modo Pendrive.");
  }

  @override
  void desligar() {
    print("Desligando o aparelho do modo Pendrive...");
  }

  @override
  void reproduzir() {
    print("Reproduzindo conteúdo do Pendrive...");
  }

  @override
  void pausar() {
    print("Pausando a reprodução do Pendrive...");
  }
}

// Estado Concreto: Modo Rádio
class EstadoModoRadio implements EstadoAparelhoSom {
  @override
  void ligar() {
    print("O aparelho já está ligado no modo Rádio.");
  }

  @override
  void desligar() {
    print("Desligando o aparelho do modo Rádio...");
  }

  @override
  void reproduzir() {
    print("Sintonizando estação de rádio...");
  }

  @override
  void pausar() {
    print("Não é possível pausar no modo Rádio.");
  }
}

// Contexto
class AparelhoSom {
  EstadoAparelhoSom estado = EstadoAparelhoSomDesligado();

  void setEstado(EstadoAparelhoSom novoEstado) {
    estado = novoEstado;
  }

  void ligar() {
    estado.ligar();
  }

  void desligar() {
    estado.desligar();
  }

  void reproduzir() {
    estado.reproduzir();
  }

  void pausar() {
    estado.pausar();
  }

  void ativarModoPendrive() {
    estado = EstadoModoPendrive();
  }

  void ativarModoRadio() {
    estado = EstadoModoRadio();
  }
}

void main() {
  var aparelho = AparelhoSom();
  
  aparelho.ligar();
  aparelho.reproduzir();
  aparelho.pausar();
  
  aparelho.ativarModoPendrive();
  aparelho.reproduzir();
  aparelho.pausar();
  
  aparelho.ativarModoRadio();
  aparelho.reproduzir();
  aparelho.pausar();
  
  aparelho.desligar();
}