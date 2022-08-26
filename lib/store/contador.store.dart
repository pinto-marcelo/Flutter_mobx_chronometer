import 'package:mobx/mobx.dart';

part 'contador.store.g.dart'; //terminal: flutter pub run build_runner build

class ContadorStore = _ContadorStore with _$ContadorStore;

abstract class _ContadorStore with Store {
  @observable
  int contador = 0;
  final List<String> frases = ['uma frase', 'duas frases', 'três frases'];

  @action
  void incrementar() {
    contador++;
  }
}
