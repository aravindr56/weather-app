import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:intl/intl.dart';

class WeatherController extends GetxController{
  var selectedDistrict='pondicherry'.obs;
  var data= {}.obs;

  @override
  void onInit(){
    super.onInit();
  }
  Future<void> getData(String district) async{
    final res=await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=chennai,IN&APPID=42a34a4afe0a32ae9aa8021badbb0c11&mode=json=imperial'));
    if(res.statusCode == 200) {
      print(res.body.toString());
      data.value = jsonDecode(res.body);
      var faran = data['main']['temp'];
      var celsius = (faran - 32) * 5 / 9;
      data['main']['celsius'] = celsius.toStringAsfixed(2);

      var sunrise = DateTime.fromMillisecondsSinceEpoch(
          data['sys']['sunrise'] * 1000);
      var formatSunrise = DateFormat('aa:mm a').format(sunrise);
      data['sys']['sunrise'] = formatSunrise;

      var sunset = DateTime.fromMillisecondsSinceEpoch(
          data['sys']['sunset'] * 1000);
      var formatSunset = DateFormat('aa:mm a').format(sunset);
      data['sys']['sunset'] = formatSunset;

      print(faran);
      print(celsius);
      print(formatSunrise);
    }
    else{
      print('not found');
    }
  }
}