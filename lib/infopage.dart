import 'package:flutter/material.dart';
import 'package:covid19ui/home.dart';
class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5ff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            margin: EdgeInsets.fromLTRB(20, 70, 20, 0),
            child: Padding(padding: EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Color(0xFF7777ff),
                    radius: 30,
                    child: Image.asset('asset/Corona.png'),

                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("CoronaVirus Testing Request >",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      Text("Request Here For Testing")
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(25),
            child: Row(
              children: <Widget>[
                Text("Symptoms",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                Text("More >",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Image.asset("asset/Fever.png"),
                SizedBox(width: 20,),
                Image.asset("asset/Cough.png"),
                SizedBox(width: 20,),
                Image.asset("asset/Sore.png"),
                SizedBox(width: 20,),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(25),
            child: Row(
              children: <Widget>[
                Text("Preservations",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                Text("More >",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Image.asset("asset/Handwash.png"),
                SizedBox(width: 35,),
                Image.asset("asset/Mask.png"),
                SizedBox(width: 35,),
                Image.asset("asset/Handshake.png"),
                SizedBox(width: 35,),
                Image.asset("asset/Covercough.png"),
                SizedBox(width: 35,),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Helpline Number",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Text("+91909315474 (India)")
              ],
            ),
          ),
          Spacer(),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 10),
                shape: StadiumBorder(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(child: pageelements("asset/Stats-icon.png","Stats"),
                    onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                    ),
                    pageelements("asset/Nearby-icon.png","Nearby"),
                    pageelements("asset/News-icon.png","News"),
                    pageelements("asset/InfoIcon-clicked.png","Info"),

                  ],
                ),
              )
        ],
      ),
    );
  }
}