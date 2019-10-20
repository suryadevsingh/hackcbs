import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



//class MyApp extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//
//        primarySwatch: Colors.blue,
//      ),
//      home: MyMapView(),
//    );
//  }
//}

class notification extends StatefulWidget {
  @override
  _MyMapViewState createState() => _MyMapViewState();
}

class _MyMapViewState extends State<notification> {

  Completer<GoogleMapController> _completer = Completer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  new Container(
        color: Colors.black12,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: _googleMap(context),
      ),
    );
  }
  Widget _googleMap(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(40.712776, -74.005974),
          zoom: 12,
        ),
        mapType: MapType.normal,
        onMapCreated: (controller) {
          _completer.complete(controller);
        },
        markers: {
          newyork1Marker,
          newyork2Marker,
          gramercyMaker,
          bernardinMarker,
          blueMarker,
        },
      ),
    );
  }
}
Marker newyork1Marker = Marker(
  markerId: MarkerId('newyork1'),
  position: LatLng(40.712451, -74.005959),
  infoWindow: InfoWindow(
    title: 'Los Tacos',
  ),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
);
Marker newyork2Marker = Marker(
    markerId: MarkerId('newyork2'),
    position: LatLng(40.729640, -73.983510),
    infoWindow: InfoWindow(
      title: 'Tree Bistro',
    ),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue));

Marker gramercyMaker = Marker(
    markerId: MarkerId('gramercy'),
    position: LatLng(40.738380, -73.981667),
    infoWindow: InfoWindow(title: 'Gramercy Tavern'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet));
Marker bernardinMarker = Marker(
    markerId: MarkerId('bernardin'),
    position: LatLng(40.761421, -73.981667),
    infoWindow: InfoWindow(title: 'Le Bernardin'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet));
Marker blueMarker = Marker(
    markerId: MarkerId('gramercy'),
    position: LatLng(40.712380, -23.981669),
    infoWindow: InfoWindow(title: 'Gramercy Tavern'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet));
