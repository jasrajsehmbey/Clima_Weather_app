import 'package:geolocator/geolocator.dart';

class Location {
  double Latitude;
  double Longitude;

  Future<void> getCurrentLocation() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();
    try {
      Position position = await Geolocator.getCurrentPosition(
          forceAndroidLocationManager: false,
          desiredAccuracy: LocationAccuracy.low);
      Latitude = position.latitude;
      Longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
