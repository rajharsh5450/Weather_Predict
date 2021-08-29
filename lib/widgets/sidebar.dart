import 'package:weather_predict/constants.dart';
import 'package:weather_predict/models/tabview.dart';
import 'package:weather_predict/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: kBorderRadius, color: kSidebarBgColor),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: kBorderRadius, color: kSidebarBgColor),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.addchart,
                        color: Colors.purple,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Weather Report",
                        style: TextStyle(
                          color: Colors.purple.shade600,
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TabIcon(
                  index: 0,
                  iconData: CupertinoIcons.home,
                  menuItem: "Dashboard",
                ),
                SizedBox(
                  height: 20,
                ),
                TabIcon(
                  index: 1,
                  iconData: CupertinoIcons.doc_chart,
                  menuItem: "Temperature",
                ),
                SizedBox(
                  height: 20,
                ),
                TabIcon(
                  index: 2,
                  iconData: CupertinoIcons.graph_circle,
                  menuItem: "Air Pressure",
                ),
                SizedBox(
                  height: 20,
                ),
                TabIcon(
                  index: 3,
                  iconData: CupertinoIcons.paperplane,
                  menuItem: "Humidity",
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class TabIcon extends StatefulWidget {
  final int? index;
  final IconData? iconData;
  final String? menuItem;
  TabIcon(
      {@required this.index, @required this.iconData, @required this.menuItem});

  @override
  _TabIconState createState() => _TabIconState();
}

class _TabIconState extends State<TabIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<TabViews>(context, listen: false).setTabView(widget.index!);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: kBorderRadius,
            color: Provider.of<TabViews>(context, listen: true).selectedIndex ==
                    widget.index!
                ? kPrimaryHighlightColor
                : kSidebarBgColor),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Icon(
              widget.iconData!,
              color: Colors.white,
              size: 24,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              widget.menuItem!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
