import 'package:flutter/material.dart';
import 'apiservices.dart';
import 'dataevent.dart';
import 'bottomnav.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<ProfilPage> {
  Service serviceAPI = Service();
  late Future<List<cData>> ListData;

  void initState() {
    super.initState();
    ListData = serviceAPI.getAllData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          decoration: BoxDecoration(
            color: Color.fromRGBO(181, 216, 172, 1)
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
              Text("Profil", style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.bold, fontSize: 24),),
              SizedBox(height: 10,),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 75,),
                      Container(
                        height: 472,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                          ),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(left: 25, right: 25),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 90),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Column(
                                      crossAxisAlignment:CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.only(bottom: 4),
                                          child: Text("Nama Lengkap", style: TextStyle(
                                            fontFamily: 'Nunito',
                                            color: Colors.black,
                                            fontSize: 14
                                          ),),
                                        ),
                                        Container(
                                          width: 500,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Text(
                                              'Amalthea Bianca',
                                              style: TextStyle(fontSize: 14, color: Colors.black),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Container(
                                          padding: EdgeInsets.only(top: 8, bottom: 4),
                                          child: Text("Email", style: TextStyle(
                                            fontFamily: 'Nunito',
                                            color: Colors.black,
                                            fontSize: 14
                                          ),),
                                        ),
                                        Container(
                                          width: 500,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Text(
                                              'amaltheabianca@gmail.com',
                                              style: TextStyle(fontSize: 14, color: Colors.black),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Container(
                                          padding: EdgeInsets.only(top: 8, bottom: 4),
                                          child: Text("Nomor HP", style: TextStyle(
                                            fontFamily: 'Nunito',
                                            color: Colors.black,
                                            fontSize: 14
                                          ),),
                                        ),
                                        Container(
                                          width: 500,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Text(
                                              '086701210081',
                                              style: TextStyle(fontSize: 14, color: Colors.black),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Container(
                                          padding: EdgeInsets.only(top: 8, bottom: 4),
                                          child: Text("Alamat", style: TextStyle(
                                            fontFamily: 'Nunito',
                                            color: Colors.black,
                                            fontSize: 14
                                          ),),
                                        ),
                                        Container(
                                          width: 500,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Text(
                                              'Desa Cigawir RT.11/RW.11, Kecamatan Selaawi Kabupaten Garut',
                                              style: TextStyle(fontSize: 14, color: Colors.black),
                                              textAlign: TextAlign.left,
                                          ),
                                        ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(181, 216, 172, 1),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage("assets/images/profil.png"),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                  ],
                ),
              ],
            ),
      ],
      ),
      ),
    );
  }
}