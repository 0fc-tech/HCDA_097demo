import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
void main() => runApp(FlutterMapApp());

class FlutterMapApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: FlutterMap(
          mapController:MapController(),
          options: MapOptions(
            initialCenter:
              LatLng(45.7871015,3.0715082),
            initialZoom: 8
          ),
          children: [
            TileLayer(urlTemplate:
              "https://tile.openstreetmap.org/{z}/{x}/{y}.png",),
            PolygonLayer(polygons: [
              Polygon(
                color:Colors.red.withAlpha(60),
                points:[LatLng(46.042798, 2.951674),
                  LatLng(45.485232, 3.918471),
                  LatLng(47.485232, 3.18471),
                  LatLng(45.750340, 2.155166)
                ]
              ),
            ],),
            //MarkerLayer(markers: [
            //  Marker(point: LatLng(45.7871015,3.071508),
            //      child:Icon(Icons.location_city))
            //]),
          ]
        ),
      ),
    );
  }
}
