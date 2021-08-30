import 'package:flutter/cupertino.dart';
import 'package:weather_predict/views/tabs/home.dart';
import 'package:weather_predict/views/tabs/humidity.dart';
import 'package:weather_predict/views/tabs/pressure.dart';
import 'package:weather_predict/views/tabs/temperature.dart';

class TabViews extends ChangeNotifier {
  int selectedIndex = 1;

  void setTabView(int i) {
    selectedIndex = i;
    notifyListeners();
  }

  Widget getTabView(BuildContext context) {
    Widget ob = Container();
    ob = HomeTab();
    switch (selectedIndex) {
      case 0:
        ob = HomeTab();
        break;
      case 1:
        ob = TemperatureTab();
        break;
      case 2:
        ob = PressureTab();
        break;
      case 3:
        ob = HumidityTab();
        break;
    }
    return ob;
  }
}
