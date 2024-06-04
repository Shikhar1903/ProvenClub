import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class CounterViewModel extends BaseViewModel {

  int counter = 0;

  void incrementCounter() {
    counter++;
    rebuildUi();
  }

  void setCounter(int x) {
    counter = x;
    rebuildUi();
  }
}
