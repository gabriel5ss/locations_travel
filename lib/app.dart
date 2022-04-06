import 'package:basics_flutter/models/location_arg.dart';
import 'package:basics_flutter/screens/location_detail/location_detail.dart';
import 'package:flutter/material.dart';
import 'screens/locations/locations.dart';
import 'style.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == LocationDetail.routeName){
          final args = settings.arguments as ScreenID;
          return MaterialPageRoute(builder: ((context) {
            return LocationDetail(args.locationID);
          })
          );
        }
      },
      home: Locations(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: AppBarTextStyle,
        ),
        textTheme: TextTheme(
          headline6: TitleTextStyle,
          bodyText2: Body1TextStyle,
        ),
      ),
    );
  }
}