import 'package:geolocator/geolocator.dart';

class MyLocation {
  double? myLatitude;
  double? myLongitude;

  Future<void> getMyCurrentLocation() async {
    try{
      LocationPermission permission = await Geolocator.requestPermission();

      final LocationSettings locationSettings = LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 100,
      );

      Position position = await Geolocator.getCurrentPosition(locationSettings: locationSettings);
      myLongitude = position.longitude;
      myLatitude = position.latitude;
      print(permission);
      print(myLongitude);
      print(myLatitude);
      
      print(position);
    } catch (e) {
      print("위치 정보 수신에 문제가 생겼습니다.");
    }
  }
}