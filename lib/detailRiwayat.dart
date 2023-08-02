import 'package:flutter/material.dart';
import 'package:flutter_application_1/prosedur.dart';
import 'bottomnav.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/bgCabe.png'),
            fit: BoxFit.fitHeight,)
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 30,),
              Container(
                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(40, 40),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                    backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                  ),
                  child: Icon(Icons.close, color: Colors.white, size: 15,),
                  onPressed: (){
                    Navigator.push(
                      context,
                        MaterialPageRoute(
                          builder: (context) => bottomNav()
                        )
                    );
                  },
                ),
              ),
              SizedBox(height: 15,),
              Text("Cabai", style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.bold, fontSize: 24),),
              SizedBox(height: 130),
              Card(
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
                elevation: 2,
                color: Colors.white54,
                child: Column(children: [Column(
                  children: <Widget>[Column(
                    children: <Widget>[
                      const Padding(padding: EdgeInsets.only(top:20)),
                      Container(
                        height: 2,
                        width: 330,
                      ),
                    ]),
                    Container(
                      child: 
                        Column(children: [
                          Text("Step by step", style: TextStyle(
                            fontFamily: 'Nunito',
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w900),
                          ),],),),
                    Column(children: <Widget>[
                      const Padding(padding: EdgeInsets.only(top:16)),
                    ]),
                    Column(
                      children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 15)),
                          Text('Langkah 1: Menyiapkan Alat dan Bahan', style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 16
                          )),
                          Spacer(),
                          Icon(Icons.check_circle, color: Color.fromRGBO(73, 150, 54, 100),),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 15)),
                          Text('Langkah 2: Penanaman di Polybag', style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 16
                          )),
                          Spacer(),
                          Icon(Icons.check_circle, color: Color.fromRGBO(73, 150, 54, 100),),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 15)),
                          Text('Langkah 3: Perawatan tanaman cabai', style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 16
                          )),
                          Spacer(),
                          Icon(Icons.check_circle, color: Color.fromRGBO(73, 150, 54, 100),),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 15)),
                          Text('Langkah 4: Pemanenan cabai', style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 16
                          )),
                          Spacer(),
                          Icon(Icons.check_circle, color: Color.fromRGBO(73, 150, 54, 100),),
                        ],
                      ),
                    ],),
                    Column(children: <Widget>[
                      const Padding(padding: EdgeInsets.only(top:16)),
                    ]),
                                ],
                              ),

                            ],),
                          ),
                          SizedBox(width: 10, height: 50,),
                            Container(
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                          ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              // borderRadius: BorderRadius.circular(10),
                                backgroundColor: MaterialStateProperty.all(Colors.white),
                                fixedSize: MaterialStateProperty.all(const Size(350, 35)),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                )
                            ),
                            child: Text("Tanam Lagi", style: TextStyle(fontFamily: 'Nunito', color: Colors.green, fontWeight: FontWeight.bold),),
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProsedurPage()
                                )
                              );
                            }
                          )),
            ],
          ),
        ),
      ),
   
    );
  }
}