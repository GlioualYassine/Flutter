import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home : Test(),

    ) ,
  );
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("my First App"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
        body:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text("hello ninjas"),

                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  color : Colors.black,
                  child: Text("hello world",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: "IndieFlower",
                        letterSpacing: 2,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  color : Colors.black,
                  child: Text("hello world",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: "IndieFlower",
                        letterSpacing: 2,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  color : Colors.black,
                  child: Text("hello world",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: "IndieFlower",
                        letterSpacing: 2,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                )


              ],
            )

    );



  }
}

