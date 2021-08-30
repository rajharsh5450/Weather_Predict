import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_weather_icons/flutter_weather_icons.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(10),
              color: Colors.transparent,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            WeatherIcons.wiFog,
                            size: 60,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Fog",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            "Dhanbad",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "20 degree Celsius",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 34,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 18,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Change Location",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 200,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(60),
                        width: 300,
                        height: double.infinity,
                        child: Column(
                          children: [
                            MainDesc(
                              iSize: 22,
                              iData: WeatherIcons.wiHumidity,
                              propertyName: "Humidity",
                              propertyVal: "50%",
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            MainDesc(
                              iSize: 24,
                              iData: WeatherIcons.wiMoonAltFirstQuarter,
                              propertyName: "Air Pressure",
                              propertyVal: "1000.45 PS",
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            MainDesc(
                              iSize: 34,
                              iData: WeatherIcons.wiRaindrops,
                              propertyName: "Chances of Rain",
                              propertyVal: "20%",
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            MainDesc(
                              iSize: 22,
                              iData: WeatherIcons.wiSandstorm,
                              propertyName: "Wind Speed",
                              propertyVal: "1.4 km/h",
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        DayWiseCard(
                          date: "April 22, 2021",
                          temperature: "20 deg C",
                          windSpeed: "1.4 km/h",
                        ),
                        DayWiseCard(
                          date: "April 22, 2021",
                          temperature: "20 deg C",
                          windSpeed: "1.4 km/h",
                        ),
                        DayWiseCard(
                          date: "April 22, 2021",
                          temperature: "20 deg C",
                          windSpeed: "1.4 km/h",
                        ),
                        DayWiseCard(
                          date: "April 22, 2021",
                          temperature: "20 deg C",
                          windSpeed: "1.4 km/h",
                        ),
                        DayWiseCard(
                          date: "April 22, 2021",
                          temperature: "20 deg C",
                          windSpeed: "1.4 km/h",
                        ),
                        DayWiseCard(
                          date: "April 22, 2021",
                          temperature: "20 deg C",
                          windSpeed: "1.4 km/h",
                        ),
                        DayWiseCard(
                          date: "April 22, 2021",
                          temperature: "20 deg C",
                          windSpeed: "1.4 km/h",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MainDesc extends StatelessWidget {
  final IconData? iData;
  final double? iSize;
  final String? propertyName;
  final String? propertyVal;
  const MainDesc({
    this.iData,
    this.iSize,
    this.propertyName,
    this.propertyVal,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          iData!,
          size: iSize!,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              propertyName!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              propertyVal!,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DayWiseCard extends StatelessWidget {
  final String? date;
  final String? temperature;
  final String? windSpeed;

  const DayWiseCard({
    Key? key,
    this.date,
    this.temperature,
    this.windSpeed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 2, color: Colors.grey.shade400),
      ),
      height: 200,
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            temperature!,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 34,
            ),
          ),
          Text(
            windSpeed!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    );
  }
}
