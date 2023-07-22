import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {
    'location': "",
    'time' : "",
    'flag':"",
    'isDateTime':true
  };

  @override
  Widget build(BuildContext context) {
    Color ? bgColor = Colors.white;
    String bgImage = "white.jpg";
    if(ModalRoute.of(context)?.settings.arguments!=null) {
      if (data['location']=="") {
        data = ModalRoute
            .of(context)
            ?.settings
            .arguments as Map;
      }
      else{
        print(data);
      }
      bgImage = data['isDateTime'] ? "day.png" : "night.png";
      bgColor = data['isDateTime'] ? Colors.blue : Colors.indigo[700];
    }
    //print(data);

    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$bgImage'),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,120,0,0),
          child: SafeArea(
              child: Column(
               children: [
                 TextButton.icon(
                     onPressed: ()async{
                       dynamic result = await Navigator.pushNamed(context,'/location');
                       setState(() {
                         data = {
                           'location': result['location'],
                           'time' : result['time'],
                           'flag':result['flag'],
                           'isDateTime' : result['isDateTime']
                         };

                       });
                     },
                     icon: Icon(Icons.add_location,
                     color: Colors.grey[300],
                     size: 32,),
                     label: Text("Edit Location",
                     style: TextStyle(
                       color: Colors.grey[300],
                       fontSize: 28

                     ),)
                 ),
                 SizedBox(height: 20,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(
                         data['location'],
                         style: TextStyle(
                           fontSize: 38,
                           letterSpacing: 3.0,
                           color: Colors.white,
                         ),
                     ),
                   ],
                 ),
                 SizedBox(height: 20,),
                 Text(
                   data['time'],
                   style: TextStyle(
                       fontSize: 66,
                       letterSpacing: 3.0,
                       color: Colors.white,
                   ),
                 )
               ],
             )

          ),
        ),
      ),
    );
  }
}
