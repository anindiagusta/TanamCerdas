import 'package:flutter/material.dart';
import 'apiservices.dart';
import 'dataevent.dart';
import 'bottomnav.dart';

class ForumPage extends StatefulWidget {
  const ForumPage({super.key});

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<ForumPage> {
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
                Text("Forum", style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.bold, fontSize: 24),),
                SizedBox(height: 10,),
                Container(
                  height: 547,
                  child: FutureBuilder<List<cData>>(
                      future: ListData,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          List<cData> isiData = snapshot.data!;
                          return ListView.builder(
                              itemCount: isiData.length,
                              itemBuilder: (context, index) {
                                return Stack(
                                  children: [
                                    Container(
                                      // padding: EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey, // Warna border
                                          width: 2.0, // Lebar border
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      margin: EdgeInsets.only(bottom: 10,),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(vertical: 10), // Jarak antara border dan konten
                                        child:
                                        Column(
                                          children: [
                                            ListTile(
                                              leading: CircleAvatar(
                                                backgroundImage: NetworkImage(isiData[index].cthumb),
                                              ),
                                              title: Text(
                                                isiData[index].cauthor,
                                                style: TextStyle(
                                                  fontFamily: 'Nunito',
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              subtitle: Text(
                                                isiData[index].cdesc,
                                                style: TextStyle(
                                                  fontFamily: 'Nunito',
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(top:15, left: 70),
                                                  child: Icon(
                                                    Icons.comment,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                SizedBox(width: 5),
                                                Container(
                                                  margin: EdgeInsets.only(top:15, left: 5),
                                                  child: Text(
                                                    "28 Komentar",
                                                    style: TextStyle(
                                                      fontFamily: 'Nunito',
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Container(
                                                  margin: EdgeInsets.only(top:15, left: 5),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    child: Text("Balas",
                                                      style: TextStyle(
                                                          fontFamily: 'Nunito',
                                                          color: Colors.grey,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }
                          );
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        }
                        return CircularProgressIndicator();
                      }
                  ),
                ),
              ],
            )

        )
    );
  }
}