
import '../../models/location_arg.dart';
import 'package:flutter/material.dart';
import '../../models/location.dart';
import '../location_detail/location_detail.dart';

class Locations extends StatelessWidget {
  const Locations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text("Locations"),
      ),
      body: ListView(
        children: locations.map((location) => GestureDetector(
            child: Text(location.name),
            onTap: () => _onLocationTap(context, location.id),
            ))
            .toList(),
      )
    );
  }

  void _onLocationTap(BuildContext context, int locationId) {
    Navigator.pushNamed(context, LocationDetail.routeName, arguments: ScreenID(locationId));
  }
}