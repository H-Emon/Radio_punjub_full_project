import 'dart:convert';
import 'package:radio_punjab_today/Api%20Call/Model/videos_api_model.dart';
import 'package:http/http.dart' as http;

Future<VideoApi?> getVideoDataApi() async {
 VideoApi? result;

  try {
    final response =
    await http.get(Uri.parse("http://app2019.radiopunjabtoday.com/api/video"));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body.toString());
      return result = VideoApi.fromJson(data);
    } else {
      print("error");
    }
  } catch (e) {
    print(e.toString());
  }
  return result;
}