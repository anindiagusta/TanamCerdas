import 'package:flutter/material.dart';
import 'registrasi.dart';
import 'bottomnav.dart';
import 'notification_service.dart';
// import 'package:local_notification_app_demo/notification_service.dart';

NotificationService _notificationService = NotificationService();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formData = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final firstController  = TextEditingController();
    final secondController = TextEditingController();

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color.fromRGBO(181, 216, 172, 1)
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 93,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image(image: AssetImage('assets/images/logo.png')),
                ],
              ),
            ),
            SizedBox(height: 72),
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
                          Text("Masuk",
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
                                  controller: secondController,
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
                            child: Text("Login", style: TextStyle(fontFamily: 'Nunito', color: Colors.white, fontWeight: FontWeight.bold),),
                            onPressed: (){
                              List<String> formData = [];

                              String kirim1 = firstController.text;
                              String kirim2 = secondController.text;

                              formData.add(kirim1);
                              formData.add(kirim2);
                              if(kirim1 == "" || kirim2 == ""){
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
                                NotificationService()
                                  .showNotification(title: 'TanamCerdas 🌱', body: 'Anda Berhasil Login😍');

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => bottomNav()
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
                            Text("Belum punya akun ?",
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
                                          builder: (context) => RegistrasiPage()
                                      )
                                  );
                                },
                                child: Text("Daftar",
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      color: Color.fromRGBO(46, 138, 23, 1),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}