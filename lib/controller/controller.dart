import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  int clickCount = 0;

  @action
  addClick() {
    clickCount++;
  }
}
