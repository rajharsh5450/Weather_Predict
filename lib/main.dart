import 'package:weather_predict/views/dashboard.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/tabview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TabViews>(create: (context) => TabViews())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: DashBoardPage.id,
        routes: {
          DashBoardPage.id: (context) => DashBoardPage(),
        },
      ),
    );
  }
}
