import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    _launchURL(String toMailId) async {
      var url = 'mailto:$toMailId';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 80, 0, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Hey\nI am Amey Sunu.",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontSize: 60),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 120, 40, 0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 150,
                        backgroundImage: AssetImage("images/myimage.jpeg"),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Text(
                  "An aspiring Computer Science Engineer from VIT University, Vellore and\na Flutter Developer for web and mobile applications including Android and iOS.",
                  style: TextStyle(
                      fontFamily: "Poppins", color: Colors.white, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Center(
                  child: Text(
                    " ╲╱",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 20),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 100, 0, 50),
                      child: Center(
                        child: Text(
                          "About Me",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 60),
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                          child: Card(
                            color: Colors.black,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "EDUCATION",
                                  style: TextStyle(
                                      color: Hexcolor("#5B63B7"),
                                      fontFamily: "Poppins",
                                      fontSize: 40),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 25, 0, 0),
                                  child: Text(
                                    "I am a final year student, pursuing Bachelors in Technology\nfrom VIT University, Vellore in Computer Science.",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins",
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 60, 0, 0),
                                  child: Text(
                                    "CLUBS AND CHAPTERS",
                                    style: TextStyle(
                                        color: Hexcolor("#5B63B7"),
                                        fontFamily: "Poppins",
                                        fontSize: 40),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 25, 0, 0),
                                  child: Text(
                                    "Being in a part of active chapters and communities have\nhelped me improve my skills and also have helped me learn\na lot from fellow colleagues and developers, namely:\n\nInstrument Society of India-VIT Vellore\nFacebook Developers Circle: Kampala",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins",
                                        fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(200, 0, 40, 0),
                          child: Container(
                            height: 400,
                            child: Image.asset("images/groupimage.JPG"),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 55, 0, 0),
                      child: Center(
                        child: Text(
                          "Also, I love to read, swim and binge watch The Office all day!",
                          style: TextStyle(
                              color: Hexcolor("#5B63B7"),
                              fontFamily: "Poppins",
                              fontSize: 30),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 100, 0, 50),
                      child: Center(
                        child: Text(
                          "Contact",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 60),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                        child: Card(
                          color: Hexcolor("#000000"),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 0, 0, 0),
                                  child: Text(
                                    "Feel free to contact me. From an email to a pull request, I'll be always available.",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins",
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                                child: Center(
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "ameysunu00719@gmail.com",
                                        style: TextStyle(
                                            color: Hexcolor("#5B63B7"),
                                            fontFamily: "Poppins",
                                            fontSize: 20),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Container(
                                          height: 50,
                                          width: 200,
                                          child: RaisedButton(
                                            color: Hexcolor("#5B63B7"),
                                            child: Text(
                                              "Mail Me!",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Poppins",
                                                  fontSize: 20),
                                            ),
                                            onPressed: () => _launchURL(
                                                'ameysunu00719@gmail.com'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 40, 40, 50),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      InkWell(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              200, 0, 0, 0),
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            child: Image.asset(
                                                "images/facebook.png"),
                                          ),
                                        ),
                                        onTap: () async {
                                          if (await canLaunch(
                                              "https://www.facebook.com/ameysunu.sunu/")) {
                                            await launch(
                                                "https://www.facebook.com/ameysunu.sunu/");
                                          }
                                        },
                                      ),
                                      InkWell(
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          child:
                                              Image.asset("images/github.png"),
                                        ),
                                        onTap: () async {
                                          if (await canLaunch(
                                              "https://www.github.com/ameysunu")) {
                                            await launch(
                                                "https://www.github.com/ameysunu");
                                          }
                                        },
                                      ),
                                      InkWell(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 200, 0),
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            child: Image.asset(
                                                "images/linkedin.png"),
                                          ),
                                        ),
                                        onTap: () async {
                                          if (await canLaunch(
                                              "https://www.linkedin.com/in/amey-sunu-187103171/")) {
                                            await launch(
                                                "https://www.linkedin.com/in/amey-sunu-187103171/");
                                          }
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
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Made with 💖 by Amey on Flutter Web.",
                  style: TextStyle(
                      fontFamily: "Poppins", color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
