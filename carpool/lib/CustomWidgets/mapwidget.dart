import 'package:carpool/exportlinks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: (controller) {
        setState(() {
          _mapController = controller;
        });
      },
      initialCameraPosition: CameraPosition(
        target: LatLng(37.7749, -122.4194), // Initial map center
        zoom: 12.0, // Initial zoom level
      ),
      myLocationEnabled: true,
      myLocationButtonEnabled: true,
      cloudMapId: 'AIzaSyAqXM_XIUKgYMHTWcggt1hhow0igu9R2CI',
    );
  }
}
