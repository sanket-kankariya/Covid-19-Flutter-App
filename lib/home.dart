
import 'package:covid19ui/infopage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5f5ff),
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 350,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFF436bfc),
                    Color(0xff7b98ff)
                  ]
                )
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Image.asset('asset/Menu.png',
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: Image.asset('asset/Search.png',
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Image.asset('asset/Coughing.png',
                        height: 220,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 220,
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(height: 45,),
                          Text("World Wide Cases",
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                              fontWeight: FontWeight.w900
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("April 24 2020, 12:48 GMT",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("3,497,558",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.w900
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 225,),
              statsCard("Deaths", '244,957', 98, 2),
              statsCard("Active Cases", '9,26,125', 82, 18),
              Padding(
                padding: EdgeInsets.fromLTRB(25, 25, 25, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Requirements',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text('More >',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(width: 25,),
                    requirementCard("asset/Glovesicon.png","GLOVES"),
                    requirementCard("asset/Maskicon.png","MASKS"),
                    requirementCard("asset/Alcoholicon.png","ALCOHOL"),
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
                    pageelements("asset/Stats-icon-clicked.png","Stats"),
                    pageelements("asset/Nearby-icon.png","Nearby"),
                    pageelements("asset/News-icon.png","News"),
                    GestureDetector(
                      child: pageelements("asset/Info-icon.png","Info"),
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => InfoPage()),
                        );
                      },
                    ),

                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget pageelements(String img,String label){
  return Container(
    margin: EdgeInsets.all(4),
    child: Column(
      children: <Widget>[
        Container(
          child: Image.asset(img),
        ),
        SizedBox(height: 4,),
        Text(
          label
        )
      ],
    ),
  );
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0,size.height - 80);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override 
  bool shouldReclip(CustomClipper<Path> oldclipper) {
    return false;
  }
}

Widget statsCard(String title, String count,int p1,int p2) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
    child: Padding(
      padding: EdgeInsets.fromLTRB(30, 17, 30, 12),
      child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title,
              style: TextStyle(
                color: Color(0xFF7777FF),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Text(count,
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 30,
              child: Image.asset('asset/Graph1.png'),
            )
          ],
        ),
        SizedBox(width: 40,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.arrow_downward,
                  size: 20,
                  color: Colors.green,
                ),
                SizedBox(width: 5,),
                Text("+$p1%",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 22,),
                Text("Mild Condition",
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[
                Icon(Icons.arrow_upward,
                  size: 20,
                  color: Colors.red,
                ),
                SizedBox(width: 5,),
                Text("+$p2%",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 22,),
                Text("Critical",
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                )
              ],
            ),
            

          ],
        )
      ],
    ),

    )
    
    
  );
}


Widget requirementCard(String img,String label){

  return Padding(
    padding: EdgeInsets.all(1.0),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(right: 20),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: <Widget>[
            Container(
              child: Image.asset(img),
            ),
            SizedBox(width: 10,),
            Text(label,
              style: TextStyle(
                color: Color(0xFF7777FF),
                fontSize: 18
              ),
            )
          ],
        ),
      ),
    ),
  );

}