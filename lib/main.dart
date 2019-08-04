import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
      // This widget is the root of your application.
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Portfolio',
                debugShowCheckedModeBanner: false,

          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(title: 'Flutter Login'),
        );
      }
    }

      class MyHomePage extends StatefulWidget {
      MyHomePage({Key key, this.title}) : super(key: key);
      // This widget is the home page of your application. It is stateful, meaning
      // that it has a State object (defined below) that contains fields that affect
      // how it looks.
      // This class is the configuration for the state. It holds the values (in this
      // case the title) provided by the parent (in this case the App widget) and
      // used by the build method of the State. Fields in a Widget subclass are
      // always marked "final".
      final String title;
      @override
      _MyHomePageState createState() => _MyHomePageState();
    }

    class _MyHomePageState extends State<MyHomePage> {
      TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
       TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
    final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

      @override
      Widget build(BuildContext context) {

        final emailField = TextField(
          obscureText: false,
          style: style,
                        decoration: new InputDecoration(
                hintText: 'aarif139@gmail.com',
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(1.0)),
                    borderSide: BorderSide(color: Colors.blue)),
                filled: true,
                contentPadding: EdgeInsets.only(
                    bottom: 12.0, top: 12.0, left: 10.0, right: 10.0),
                labelText: 'Email',
              ),

        );
        final passwordField = TextField(
          obscureText: true,
          style: style,
                decoration: new InputDecoration(
                hintText: 'Admin@123',
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(1.0)),
                    borderSide: BorderSide(color: Colors.blue)),
                filled: true,
                contentPadding: EdgeInsets.only(
                    bottom: 12.0, top: 12.0, left: 10.0, right: 10.0),
                labelText: 'Password',
              ),
        );
        final loginButon = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {},
            child: Text("Login",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        );

            return Scaffold(
        backgroundColor: Color(0xffE6E6E6),
        key: scaffoldKey,
        body: Stack(
          children: <Widget>[
            Container(
              color: Color(0xff1976D3),
              height: MediaQuery.of(context).size.height / 2.2,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: new NetworkImage(
                          "https://pub.dartlang.org/static/img/dart-logo-400x400.png?hash=i18bc8g4aa2r6vf85lpgro6ml5ltd13g",
                        )))),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                        ),
                        Container(
                          //color: Colors.white,
                          padding: EdgeInsets.all(10),
                          child: Card(
                            elevation: 3,
                            child: Column(
                              children: <Widget>[
                                Form(
                                  key: formKey,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 12, left: 12),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 20.0, bottom: 20),
                                          child: Text(
                                            "SIGN IN",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        new Theme(
                                            data: new ThemeData(
                                                hintColor: Color(0xff757575)),
                                            child: new TextFormField(
                                              keyboardType:
                                                  TextInputType.number,

                                              controller: email,

                                              validator: (value) {
                                                if (value.length != 10) {
                                                  return 'Please Enter Your Mobile No.';
                                                }
                                              },

                                              // onSaved: (val) => _username = val,
                                              style: TextStyle(
                                                  color: Color(0xff212121),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15),
                                              decoration: new InputDecoration(
                                                labelText: 'Mobile No.',
                                                labelStyle: TextStyle(
                                                    color: Color(0xff757575),
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            )),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10.0),
                                          child: Theme(
                                              data: new ThemeData(
                                                  hintColor: Color(0xff757575)),
                                              child: new TextFormField(
                                                controller: password,
                                                validator: (value) {
                                                  if (value.isEmpty) {
                                                    return 'Please Enter Your Password';
                                                  }
                                                },
                                                style: TextStyle(
                                                    color: Color(0xff212121),
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 15),

                                                decoration: new InputDecoration(
                                                  labelText: 'Password',
                                                  labelStyle: TextStyle(
                                                      color: Color(0xff757575),
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),

                                                obscureText: true,
                                              )),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: MaterialButton(
                                            child: Text(
                                              "Forgot Password?",
                                              style: TextStyle(
                                                  color: Color(0xff212121),
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            onPressed: () {

                                             

                                            },
                                          ),
                                        ),
                                        new InkWell(
                                          onTap: () {

                                            if(email.text ==""){

                                            }else if(password.text ==""){


                                            }else{
                                              //circular = true;
                                            }


                                          },
                                          child: new Container(
                                            //width: 100.0,
                                            height: 45.0,
                                            decoration: new BoxDecoration(
                                              color: Color(0xff1976D3),
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      8.0),
                                            ),
                                            child: new Center(
                                              child: new Text(
                                                'SIGN IN',
                                                style: new TextStyle(
                                                    fontSize: 18.0,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        MaterialButton(
                                          child: Text(
                                            "Don't have an account? Sign Up",
                                            style: TextStyle(
                                                color: Color(0xff212121),
                                                fontWeight: FontWeight.w600),
                                          ),
                                          onPressed: () {
                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             SignUp()));
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        
          ],
        ));

      }
    }