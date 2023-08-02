import 'package:flutter/material.dart';
import 'event.dart';
import 'prosedur.dart';
import 'notification_service.dart';

NotificationService _notificationService = NotificationService();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class HomePage extends StatefulWidget {
  @override
  _BerandaState createState() => new _BerandaState();
}

class _BerandaState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // navigatorKey: navigatorKey,
      // initialRoute: '/',
      // routes: {
      //   '/second': (context) => const SecondLayout(data: ['satu', 'dua']),
      // },
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color.fromRGBO(181, 216, 172, 1)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Selamat Datang!", style: TextStyle(fontFamily: 'Nunito', color: Colors.black, fontSize: 14),),
                  Text("Amalthea Bianca", style: TextStyle(fontFamily: 'Nunito', color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
                  SizedBox(height: 25,),
                  Center(
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            )
                        ),
                        child: Text("Mulai Tanam", style: TextStyle(fontFamily: 'Nunito', color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProsedurPage()
                            )
                          );
                        }
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                ),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20,),
                        Container(
                          child:
                          Text("Tanaman",
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 130,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Column(
                                children: [
                                  TextButton(
                                    style: ButtonStyle(padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(0)),),
                                    child: Image(image: AssetImage('assets/images/cabai.png')),
                                    onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ProsedurPage()
                                        )
                                      );
                                    }
                                  ),
                                  Text("Cabai",
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  TextButton(
                                    style: ButtonStyle(padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(0)),),
                                    child: Image(image: AssetImage('assets/images/tomat.png')),
                                    onPressed: (){}
                                  ),
                                  Text("Tomat",
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  TextButton(
                                    style: ButtonStyle(padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(0)),),
                                    child: Image(image: AssetImage('assets/images/bamer.png')),
                                    onPressed: (){}
                                  ),
                                  Text("Bawang Merah",
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  TextButton(
                                    style: ButtonStyle(padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(0)),),
                                    child: Image(image: AssetImage('assets/images/baput.png')),
                                    onPressed: (){}
                                  ),
                                  Text("Bawang Putih",
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Event",
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => EventPage()
                                        )
                                    );
                                  },
                                  child: Text("Lainnya",
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        color: Color.fromRGBO(46, 138, 23, 1),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Container(
                            height: 268,
                            child: ListView(
                                scrollDirection: Axis.vertical,
                                padding: EdgeInsets.only(top: 0),
                                children: <Widget>[
                                  Stack(
                                    children: [
                                      Image(
                                        image: AssetImage('assets/images/event.png'),
                                        width: 360,
                                        fit: BoxFit.cover,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 95,left: 25, right: 25,),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text("Menanam dan Tren Sayuran Organik di Era Digital",
                                              style: TextStyle(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white

                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Selaawi, Garut",
                                                  style: TextStyle(
                                                      fontFamily: 'Nunito',
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white

                                                  ),
                                                ),
                                                Text("30 Juni 2023, 10.00 WIB",
                                                  style: TextStyle(
                                                      fontFamily: 'Nunito',
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white

                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Stack(
                                    children: [
                                      Image(
                                        image: AssetImage('assets/images/event.png'),
                                        width: 360,
                                        fit: BoxFit.cover,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 95,left: 25, right: 25,),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text("Menanam dan Tren Sayuran Organik di Era Digital",
                                              style: TextStyle(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white

                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Selaawi, Garut",
                                                  style: TextStyle(
                                                      fontFamily: 'Nunito',
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white

                                                  ),
                                                ),
                                                Text("30 Juni 2023, 10.00 WIB",
                                                  style: TextStyle(
                                                      fontFamily: 'Nunito',
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white

                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Stack(
                                    children: [
                                      Image(
                                        image: AssetImage('assets/images/event.png'),
                                        width: 360,
                                        fit: BoxFit.cover,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 95,left: 25, right: 25,),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text("Menanam dan Tren Sayuran Organik di Era Digital",
                                              style: TextStyle(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white

                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Selaawi, Garut",
                                                  style: TextStyle(
                                                      fontFamily: 'Nunito',
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white

                                                  ),
                                                ),
                                                Text("30 Juni 2023, 10.00 WIB",
                                                  style: TextStyle(
                                                      fontFamily: 'Nunito',
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white

                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ]
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar:  BottomNavigationMenu(),
    );
  }
}