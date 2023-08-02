import 'package:flutter/material.dart';
import 'bottomnav.dart';

class ProsedurPage extends StatelessWidget {
  // const ProsedurPage({super.key});
  
//   @override
//   _ProsedurPageState createState() => _ProsedurPageState();
// }

// class _ProsedurPageState extends State<ProsedurPage> {
//   final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(181, 216, 172, 1)
        ),
        child: Padding(
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
              Text("Cabai", style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.bold, fontSize: 24),),
              SizedBox(height: 10,),
              Image(image: AssetImage('assets/images/prosedur.png'), width: 360, fit: BoxFit.cover,),
              SizedBox(height: 10,),
              Container(
                width: 360,
                height: 135,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.4),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(15),
                child: Text(
                  "Cabai merah (Capsicum annuum) termasuk famili Solanaceae dan merupakan salah satu komoditas sayuran yang memiliki banyak manfaat, bernilai ekonomi tinggi dan mempunyai prospek pasar yang menarik. Buah cabai selain dapat dikonsumsi segar untuk campuran bumbu masak juga dapat diawetkan misalnya dalam bentuk acar, saus, tepung cabai dan buah kering.",
                  style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.normal, fontSize: 11),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    width: 93,
                    height: 88,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.watch_outlined, size: 20,),
                        SizedBox(height: 8,),
                        Text("70 -75", style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.normal, fontSize: 11),),
                        Text("hari", style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.normal, fontSize: 11),),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.all(15),
                    width: 249,
                    height: 88,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text("Cocok untuk", style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.bold, fontSize: 13),),
                        SizedBox(height: 8,),
                        Text("Dataran Tinggi", style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.normal, fontSize: 11),),
                        Text("Dataran Rendah", style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.normal, fontSize: 11),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(200, 35)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                    )
                  ),
                  child: Text("Mulai Tanam", style: TextStyle(fontFamily: 'Nunito', color: Color.fromRGBO(46, 138, 23, 1), fontWeight: FontWeight.bold, fontSize: 14),),
                  onPressed: (){}
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}