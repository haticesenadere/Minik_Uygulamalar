import 'package:mobx/mobx.dart';

part 'sayacmodel.g.dart';

class sayacModel = sayacModelBase with _$sayacModel;

abstract class sayacModelBase with Store {
  @observable
  int sayac = 0;

  @action
  void sayaciArttir() {
    sayac = sayac + 1;
  }

  @action
  void sayaciAzalt(int miktar) {
    sayac = sayac - miktar;
  }
}
