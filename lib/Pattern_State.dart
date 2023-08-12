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

// Interface para os estados
abstract class VendingMachineState {
  void insertMoney(int amount);
  void selectItem(String item);
  void dispenseItem();
}

// Estados concretos
class NoMoneyState implements VendingMachineState {
  @override
  void insertMoney(int amount) {
    print("$amount reais inseridos.");
  }

  @override
  void selectItem(String item) {
    print("Insira dinheiro primeiro.");
  }

  @override
  void dispenseItem() {
    print("Nenhum item selecionado e nenhum dinheiro inserido.");
  }
}

class HasMoneyState implements VendingMachineState {
  @override
  void insertMoney(int amount) {
    print("$amount reais adicionados ao total.");
  }

  @override
  void selectItem(String item) {
    print("$item selecionado.");
  }

  @override
  void dispenseItem() {
    print("Nenhum item selecionado ou saldo insuficiente.");
  }
}

// Classe da máquina de venda automática
class VendingMachine {
  VendingMachineState _state = NoMoneyState();

  void setState(VendingMachineState state) {
    _state = state;
  }

  void insertMoney(int amount) {
    _state.insertMoney(amount);
    if (_state is NoMoneyState) {
      setState(HasMoneyState());
    }
  }

  void selectItem(String item) {
    _state.selectItem(item);
    if (_state is HasMoneyState) {
      print("Tentando dispensar o item...");
      _state.dispenseItem();
      setState(NoMoneyState());
    }
  }
}

void main() {
  var vendingMachine = VendingMachine();

  vendingMachine.insertMoney(0); // Saída: 0 reais inseridos.
  vendingMachine.selectItem("Coca-Cola"); // Saída: Insira dinheiro primeiro.

  vendingMachine.insertMoney(15); // Saída: 5 reais inseridos.
  vendingMachine.selectItem("Pepsi"); // Saída: Pepsi selecionado. \n Saída: Nenhum item selecionado ou saldo insuficiente.
}
