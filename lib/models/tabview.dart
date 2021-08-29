import 'package:weather_predict/views/tabs/home.dart';


import 'package:flutter/cupertino.dart';

class TabViews extends ChangeNotifier {
  int selectedIndex = 1;

  void setTabView(int i) {
    selectedIndex = i;
    notifyListeners();
  }

  Widget getTabView(BuildContext context) {
    Widget ob = Container();
    ob = HomeTab();
    // switch (selectedIndex) {
    //   case 0:
    //     ob = UploadTab();
    //     break;
    //   case 1:
    //     ob = DetailsTab();
    //     break;
    //   case 2:
    //     ob = VisualizeTab();
    //     break;
    //   case 3:
    //     ob = ExportTab();
    //     break;
    // }
    return ob;
  }
}
