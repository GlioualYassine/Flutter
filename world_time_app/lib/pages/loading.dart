import 'package:flutter/material.dart';
import '../services/word_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async
  {
    WordTime instance = WordTime(location: "Berlin", flag: "germany.png", url: "Africa/casablanca");
    await instance.getData();
    Future.delayed(Duration(seconds: 1),(){
      Navigator.pushReplacementNamed(context, '/home',arguments: {
        'location':instance.location,
        'flag':instance.flag,
        'time':instance.Time,
        'isDateTime' : instance.isDaytime
      });
    });
  }

  void initState() {
    // TODO: implement initState
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    // print("inside build fct");
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: Center(
          child :
          SpinKitRing(
            color: Colors.white,
            size: 50.0,
          ),
        )
    );
  }
}
