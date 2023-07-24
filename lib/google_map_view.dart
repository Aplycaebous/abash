import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapView extends StatelessWidget {
  const GoogleMapView({super.key});


  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.25, // Set the height factor to 25%
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194), // Set the initial map location
          zoom: 12.0, // Adjust the initial zoom level
        ),
        markers: {
          Marker(
            markerId: MarkerId('markerId'),
            position: LatLng(37.7749, -122.4194), // Set the marker position
            infoWindow: InfoWindow(
              title: 'Marker Title',
              snippet: 'Marker Snippet',
            ),
          ),
        },
      ),
    );
  }
}
