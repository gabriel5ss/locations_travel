import '../../models/location_arg.dart';
import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {

  final int _locationID;
  static const routeName = '/location_details';

  const LocationDetail(this._locationID, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //final args = ModalRoute.of(context)!.settings.arguments as ScreenID;
    //final location = Location.fetchByID(args.locationID.toInt());
    final location = Location.fetchByID(_locationID);

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(location.imagePath), ...textSections(location),
        ],
        )
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
  }
}