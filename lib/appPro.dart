import 'package:flutter/material.dart';

void main() {
  runApp(AppPro());
}

class AppPro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //assign the background image of monkey
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/monkey.png'),
              ),
              // this used to 1st text 'monkey man',
              Text(
                'monkey man',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold

                ),
              ),
              //this is used to 2nd text 'FUTTER DEVELOPER',
              Text(
                'FUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              //this used to divider line
              SizedBox(

                height: 10.0,
                width: 200.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              //this card is used to phn no.
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    '+91 9999 22 8888',
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    ),
                  ),
                ),
              ),
              //this card is used to store email id
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    'ujjawalkumar123@gmail.com',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                    ),
                  ),
                ),
              ),
              //child:
            ],
          ),
        ),
      ),
    );
  }
}
