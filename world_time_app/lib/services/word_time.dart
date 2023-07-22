import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
class WordTime {
  String location; //location name for the UI
  String Time; //the time in that location
  String flag ; //url to an asset flag icons
  String url ; //location url for api endpoint
  bool isDaytime = true;
  WordTime({required this.location,required this.flag,required this.url , this.Time=""});

   Future<void>getData () async{
    var url = Uri.parse("http://worldtimeapi.org/api/timezone/${this.url}");
    try{
      var response = await http.get(url);
      Map data = jsonDecode(response.body);
      // print(data);

      //get properties
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      // print("date time : ${datetime}");
      // print("offset : ${offset}");

      // create a datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      //set the time propertie


      isDaytime = now.hour > 6 && now.hour < 19   ? true : false ;
      Time = DateFormat.jm().format(now);

    }catch(err){
     print(err);
     Time = "Could not get time data";
    }

  }

}

