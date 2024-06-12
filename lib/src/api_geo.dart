import 'package:dio/dio.dart';
import 'package:geolocation_info_ip/src/models/geolocation_model.dart';

class ApiGeo {
  ApiGeo._();

  static Future<GeolocationModel> getGeolocation() async {
    try {
      final response = await Dio().get('https://ipapi.co/json/');

      return GeolocationModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
