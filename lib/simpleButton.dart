import 'package:flutter/material.dart';
import 'appPro.dart';

class SimpleButton extends StatefulWidget {
  const SimpleButton({Key? key}) : super(key: key);

  @override
  State<SimpleButton> createState() => _SimpleButtonState();
}

class _SimpleButtonState extends State<SimpleButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          //excludeHeaderSemantics: false,
          //toolbarOpacity: 5.0,
          leading: TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          title: Text('AppBar'),
        ),
        body: SafeArea(
          child: Center(
            child: ElevatedButton(
              //child: Text("Elevated Button", style: TextStyle(fontSize: 30)),
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AppPro()));
              },

              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(5.0),
                backgroundColor: Colors.white,
                shadowColor: Colors.pink,
                elevation: 40,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),

                ),

              ),
              child: Ink(
                decoration: BoxDecoration(
                    gradient:
                    LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.red, Colors.yellow]),
                    borderRadius: BorderRadius.circular(50)),
                // Border.all(color: Colors.white),


                child: Container(
                  width: 100,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text('hi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),

    );

  }
}
