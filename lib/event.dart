import 'package:flutter/material.dart';
import 'apiservices.dart';
import 'dataevent.dart';
import 'bottomnav.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
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
                Text("Event", style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.bold, fontSize: 24),),
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
                                      width: 390,
                                      height: 200,
                                      padding: EdgeInsets.only(top: 0, bottom: 10),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          isiData[index].cthumb,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 100, left: 25, right: 25),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            isiData[index].ctitle,
                                            style: TextStyle(
                                              fontFamily: 'Nunito',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                isiData[index].cauthor,
                                                style: TextStyle(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                isiData[index].ctime,
                                                style: TextStyle(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
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