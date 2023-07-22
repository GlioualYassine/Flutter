import 'package:flutter/material.dart';
import 'package:world_time_app/services/word_time.dart';
class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0 ;
  @override

  List<WordTime> locations = [
    WordTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WordTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WordTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WordTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WordTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WordTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WordTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WordTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];



  void initState() {
    // TODO: implement initState
  }

  void updateTime(index) async
  {
    WordTime instance = locations[index];
    await instance.getData();
    Navigator.pop(context,{
      'location':instance.location,
      'flag':instance.flag,
      'time':instance.Time,
      'isDateTime' : instance.isDaytime
    });
  }


  @override
  Widget build(BuildContext context) {
   // print("inside build fct");
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose a Location"),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: ListView.builder(itemCount: locations.length,
            itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1 , horizontal: 4),
                  child: Card(
                    child: ListTile(
                      onTap: (){
                        updateTime(index);
                      },
                      title: Text(locations[index].location),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/${locations[index].flag}"),
                      ),
                    ),
                  ),
                );
            },
      ),
    );
  }
}
