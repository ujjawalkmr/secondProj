import 'package:flutter/material.dart';
import 'package:test5/dialogBox.dart';
void main() {
  runApp(
      NormalColumn()
  );
}
class NormalColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
            child:  Column(
              crossAxisAlignment:CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.white,
                    height: 100.0,
                    width: 100.0,
                    margin: EdgeInsets.only(left: 30.0),
                    padding: EdgeInsets.all(20.0),

                    child: TextButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DialogBox()));
                      },
                      child: Text(
                          'go forword'
                      ),
                    )
                ),
                //this container also used to go back to previus page main.dart
                Container(
                  color: Colors.yellow,
                  height: 100.0,
                  width: 100.0,
                  margin: EdgeInsets.only(left: 30.0),
                  padding: EdgeInsets.all(20.0),

                  child: TextButton(
                    onPressed: ()
                    {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'go to back'
                    ),
                  )
                ),
              ],
            )
        ),
      ),
    );
  }
}


