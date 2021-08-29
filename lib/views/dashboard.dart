import 'package:weather_predict/constants.dart';
import 'package:weather_predict/models/tabview.dart';
import 'package:weather_predict/themes.dart';
import 'package:weather_predict/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashBoardPage extends StatefulWidget {
  static String id = 'dashBoardPage';
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPageBackgroundColor,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: kPageContainerColor,
              borderRadius: kBorderRadius,
            ),
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: kBorderRadius,
              child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/fog.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: TabView()),
            ),
          ),
        ),
      ),
    );
  }
}

class TabView extends StatefulWidget {
  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 3,
          child: SideBar(),
        ),
        Expanded(
          flex: 1,
          child: VerticalDivider(
            width: 0.5,
            thickness: 1,
          ),
        ),
        Expanded(
          flex: 10,
          child:
              Provider.of<TabViews>(context, listen: true).getTabView(context),
        ),
      ],
    );
  }
}
