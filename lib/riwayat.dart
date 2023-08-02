import 'package:flutter/material.dart';
import 'package:flutter_application_1/detailRiwayat.dart';
import 'bottomnav.dart';

class RiwayatPage extends StatefulWidget {
  const RiwayatPage({super.key});

  @override
  _RiwayatPageState createState() => _RiwayatPageState();
}

class _RiwayatPageState extends State<RiwayatPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
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
                  child: Icon(Icons.close, color:Colors.white, size: 15,),
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
              Text("Riwayat Tanam", style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.bold, fontSize: 24),),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    OutlinedButton(
                      child: Stack(
                        children: [
                          Row(
                            children: <Widget>[
                              Container( margin: const EdgeInsets.all(5), child: Image.asset('assets/images/cabai.png')),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text("Cabai", style: TextStyle(
                                fontFamily: 'Nunito',
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                              ),
                              Text("Berhasil panen 500gr", style: TextStyle(color: Colors.black45),)
                              ],),
                              
                            ],
                          ),
                        ],
                      ),
                        onPressed: (){
                          Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyApp()
                                        )
                                    );
                        },
                    ),
                    OutlinedButton(
                      child: Stack(
                        children: [
                          Row(
                            children: <Widget>[
                              Container( margin: const EdgeInsets.all(5), child: Image.asset('assets/images/tomat.png')),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text("Tomat", style: TextStyle(
                                fontFamily: 'Nunito',
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                              ),
                              Text("Berhasil panen 30gr", style: TextStyle(color: Colors.black45),)
                              ],),
                            ],
                          ),
                        ],
                      ),
                        onPressed: (){},
                    ),
                    OutlinedButton(
                      child: Stack(
                        children: [
                          Row(
                            children: <Widget>[
                              Container( margin: const EdgeInsets.all(5), child: Image.asset('assets/images/baput.png')),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text("Bawang Putih", style: TextStyle(
                                fontFamily: 'Nunito',
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                              ),
                              Text("Berhasil panen 20gr", style: TextStyle(color: Colors.black45),)
                              ],),
                            ],
                          ),
                        ],
                      ),
                        onPressed: (){},
                    ),
                  ],
                )
                ),
            
            ],
          ),
        ),
      );
  }
}