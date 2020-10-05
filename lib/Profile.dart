import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 53.0,
                backgroundColor: Colors.white70,
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/images/me.jpg'),
                ),
              ),
              Text(
                'Kiran Ojha',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Flutter developer'.toUpperCase(),
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.pinkAccent[100],
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.pinkAccent,
                    ),
                    title: Text(
                      '+9779869151667',
                      style: TextStyle(
                        color: Colors.pinkAccent[900],
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.pinkAccent,
                  ),
                  title: Text(
                    'kiranojha1226@gmail.com',
                    style: TextStyle(
                      color: Colors.pinkAccent[900],
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            color: Colors.white,
            shape: new CircleBorder(),
            padding: EdgeInsets.all(5.0),
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.linkedinIn),
              color: Colors.blue[800],
              onPressed: _launchLinkedinURL,
              tooltip: 'Visit my linkedin',
            ),
          ),
          FlatButton(
            onPressed: () {},
            color: Colors.black,
            shape: new CircleBorder(),
            padding: EdgeInsets.all(5.0),
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.github),
              color: Colors.white,
              onPressed: _launchGithubURL,
              tooltip: 'Open my github',
            ),
          ),
          FlatButton(
            onPressed: () {},
            color: Colors.blue[700],
            shape: new CircleBorder(),
            padding: EdgeInsets.all(5.0),
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.facebookF),
              color: Colors.white,
              onPressed: _launchFbURL,
              tooltip: 'Visit my facebook',
            ),
          ),
        ],
      ),
    );
  }
}

_launchLinkedinURL() async {
  const url = 'https://www.linkedin.com/in/kiranojhanp/';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

_launchGithubURL() async {
  const url = 'https://github.com/kiranojhanp';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

_launchFbURL() async {
  const url = 'https://www.facebook.com/kiran.ojha.16144/';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}
