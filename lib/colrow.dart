import 'package:flutter/material.dart';
import 'listview.dart';
void main() {
  runApp(ColRow());
}
class ColRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.red,
                height: 100.0,
                width: 100.0,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.blue,
                      height: 100.0,
                      width: 100.0,
                      //this is used to go on ListView Example page(listview.dart)
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ListWidget()));
                        },
                        child: Text('ListView',
                        style: TextStyle(
                          color: Colors.white
                        ),),
                      ),
                    ),
                    Container(
                      color: Colors.pink,
                      height: 100.0,
                      width: 100.0,
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.orange,
                height: 100.0,
                width: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}



