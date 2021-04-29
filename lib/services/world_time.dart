import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  String location;
  String time;
  String flag; //url for image
String url;  //url for api

  bool isDaytime; //true or false if daytime or not

  WorldTime({this.location,this.flag,this.url});



  Future <void> getTime() async{

    try{
      Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data=jsonDecode(response.body);

      String datetime=data['datetime'];
      String offset=data['utc_offset'].substring(1,3);
      print(datetime);
      print(offset);

      //create date time object
      DateTime now=DateTime.parse(datetime);
      now=now.add(Duration(hours:int.parse(offset)));


      isDaytime=now.hour>6 && now.hour<20?true:false;
      time=DateFormat.jm().format(now);


    }
    catch(e){
     time='Could not get user data';
    }



  }




}



