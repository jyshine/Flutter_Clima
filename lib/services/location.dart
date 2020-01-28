import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitde;

  Future<void> getCurrentLocation() async {
    try {
      //위치를 가져오지 못하거나 위치 정보 허용을 안할경우 오류 발행
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitde = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
