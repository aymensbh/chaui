import 'package:flutter/material.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigoAccent,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 4, left: 40, right: 40),
          color: Colors.indigoAccent,
          padding: MediaQuery.of(context).padding,
          child: Column(
            //work with design later
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Welcome back!",
                        style: TextStyle(fontSize: 46, color: Colors.white),
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                        style: TextStyle(color: Colors.white54),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.indigoAccent,
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(18)),
                        child: Material(
                          borderRadius: BorderRadius.circular(18),
                          child: InkWell(
                              onTap: _showLoginSheet,
                              borderRadius: BorderRadius.circular(18),
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 4,
                                height: MediaQuery.of(context).size.height / 16,
                                child: Text("Login",
                                    style: TextStyle(color: Colors.white)),
                              )),
                        )),
                    Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.indigoAccent,
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(18)),
                        child: Material(
                          borderRadius: BorderRadius.circular(18),
                          child: InkWell(
                              onTap: _showSignupSheet,
                              borderRadius: BorderRadius.circular(18),
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 4,
                                height: MediaQuery.of(context).size.height / 16,
                                child: Text("Signup",
                                    style: TextStyle(color: Colors.white)),
                              )),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showLoginSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
            margin: EdgeInsets.only(left: 6, right: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            ),
            child: new Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(8),
                  width: 80,
                  height: 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black26,
                  ),
                ),
                Container(
                  child: Text("Select a Login method",
                      style: TextStyle(fontSize: 18)),
                ),
                Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 16,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.blueAccent, width: 2),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 18, left: 18),
                            child: Icon(
                              GroovinMaterialIcons.facebook,
                              color: Colors.blueAccent,
                            )),
                        Container(child: Text("Facebook Login"))
                      ],
                    )),
                Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 16,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.deepOrange, width: 2),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 18, left: 18),
                          child: Icon(GroovinMaterialIcons.google,
                              color: Colors.deepOrange),
                        ),
                        Container(child: Text("Google Login"))
                      ],
                    )),
                Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 16,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 18, left: 18),
                            child: Icon(
                              Icons.person_outline,
                              color: Colors.black,
                            )),
                        Container(child: Text("Email & Password"))
                      ],
                    )),
                Container(
                  padding: EdgeInsets.only(bottom:18,left: 60,right: 60),
                  child: Text(
                    "You can now chose one way to login and chat with freinds",
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            )),
          );
        });
  }

  void _showSignupSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
            margin: EdgeInsets.only(left: 6, right: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            ),
            child: new Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(8),
                  width: 80,
                  height: 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black26,
                  ),
                ),
                Container(
                  child: Text("Select a Signup method",
                      style: TextStyle(fontSize: 18)),
                ),
                Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 16,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.blueAccent, width: 2),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 18, left: 18),
                            child: Icon(
                              GroovinMaterialIcons.facebook,
                              color: Colors.blueAccent,
                            )),
                        Container(child: Text("Facebook Signup"))
                      ],
                    )),
                Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 16,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.deepOrange, width: 2),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 18, left: 18),
                          child: Icon(GroovinMaterialIcons.google,
                              color: Colors.deepOrange),
                        ),
                        Container(child: Text("Google Signup"))
                      ],
                    )),
                Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 16,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 18, left: 18),
                            child: Icon(
                              Icons.person_outline,
                              color: Colors.black,
                            )),
                        Container(child: Text("Email & Password"))
                      ],
                    )),
                Container(
                  padding: EdgeInsets.only(bottom:18,left: 60,right: 60),
                  child: Text(
                    "You can now chose one way to Signup and chat with freinds",
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            )),
          );
        });
  }
}
