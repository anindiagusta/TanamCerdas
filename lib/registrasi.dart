import 'package:flutter/material.dart';
import 'login.dart';

class RegistrasiPage extends StatefulWidget {
  const RegistrasiPage({Key? key,}) : super(key: key);

  @override
  _RegistrasiPageState createState() => _RegistrasiPageState();
}

class _RegistrasiPageState extends State<RegistrasiPage> {
  final formData = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final firstController  = TextEditingController();
    final secondController = TextEditingController();
    final threeController = TextEditingController();
    final fourController = TextEditingController();

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color.fromRGBO(181, 216, 172, 1)
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image(image: AssetImage('assets/images/logo.png')),
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
                      children: <Widget>[
                        SizedBox(height: 20,),
                        Container(
                          child:
                          Text("Daftar",
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                color: Colors.black,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child:
                                Text("Nama Lengkap",
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      color: Colors.black,
                                      fontSize: 14),
                                ),
                              ),
                              Container(
                                height: 35,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                    labelText: "Masukkan Nama Lengkap",
                                    labelStyle: TextStyle(fontFamily: 'Nunito', color: Colors.grey, fontSize: 12),
                                    contentPadding: EdgeInsets.only(left: 15, right: 15),
                                  ),
                                  controller: firstController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(height: 15,),
                              Container(
                                child:
                                Text("Email atau Nomor HP",
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      color: Colors.black,
                                      fontSize: 14),
                                ),
                              ),
                              Container(
                                height: 35,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                    labelText: "Masukkan Email atau Nomor HP",
                                    labelStyle: TextStyle(fontFamily: 'Nunito', color: Colors.grey, fontSize: 12),
                                    contentPadding: EdgeInsets.only(left: 15, right: 15),
                                  ),
                                  controller: secondController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(height: 15,),
                              Container(
                                child:
                                Text("Kata Sandi",
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      color: Colors.black,
                                      fontSize: 14),
                                ),
                              ),
                              Container(
                                height: 35,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                    labelText: "Masukkan Kata Sandi",
                                    labelStyle: TextStyle(fontFamily: 'Nunito', color: Colors.grey, fontSize: 12),
                                    contentPadding: EdgeInsets.only(left: 15, right: 15),
                                  ),
                                  controller: threeController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(height: 15,),
                              Container(
                                child:
                                Text("Alamat",
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      color: Colors.black,
                                      fontSize: 14),
                                ),
                              ),
                              Container(
                                height: 35,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                    labelText: "Masukkan Alamat",
                                    labelStyle: TextStyle(fontFamily: 'Nunito', color: Colors.grey, fontSize: 12),
                                    contentPadding: EdgeInsets.only(left: 15, right: 15),
                                  ),
                                  controller: fourController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(46, 138, 23, 1)
                          ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              // borderRadius: BorderRadius.circular(10),
                                backgroundColor: MaterialStateProperty.all(Color.fromRGBO(46, 138, 23, 1)),
                                fixedSize: MaterialStateProperty.all(const Size(350, 35)),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                )
                            ),
                            child: Text("Daftar", style: TextStyle(fontFamily: 'Nunito', color: Colors.white, fontWeight: FontWeight.bold),),
                            onPressed: (){
                              List<String> formData = [];

                              String kirim1 = firstController.text;
                              String kirim2 = secondController.text;
                              String kirim3 = threeController.text;
                              String kirim4 = fourController.text;

                              formData.add(kirim1);
                              formData.add(kirim2);
                              formData.add(kirim3);
                              formData.add(kirim4);
                              if(kirim1 == "" || kirim2 == "" || kirim3 == "" || kirim4 == ""){
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: const Text('Isiang kosong'),
                                      content: const Text('Isian tidak boleh kosong'),
                                      actions: <Widget>[
                                        ElevatedButton(
                                          onPressed: () => Navigator.pop(context, 'Done'),
                                          child: const Text('Cancel'),
                                        ),
                                        ElevatedButton(
                                          onPressed: () => Navigator.pop(context, 'OK'),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    )
                                );
                              }

                              /*
                              * PUSH NOTIFICATION
                              * LOCAL NOTIFICATION
                              * */
                              else{
                                final snackBar = SnackBar(
                                  content: Text(kirim1),
                                  action: SnackBarAction(
                                    label: 'Undo',
                                    onPressed: () {
                                      // Some code to undo the change.
                                    },
                                  ),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()
                                    )
                                );
                              }
                            },
                          ),
                        ),
                        SizedBox(height: 70,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Sudah punya akun ?",
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                color: Colors.black,
                                fontSize: 14,),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()
                                      )
                                  );
                                },
                                child: Text("Masuk",
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      color: Color.fromRGBO(46, 138, 23, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}