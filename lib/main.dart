import 'package:flutter/material.dart';
enum gender{male,female,other}
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  bool isChecked=false;
  bool isSwitch=false;
  gender _gen=gender.male;
  double value=1.0;


  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Task'),
        ),
        body: Column(
          children: [
            Container(
              height: 50.0,
              color: Colors.teal,
              width: 200.0,
              child: Text('This is Text',
          style: TextStyle(
                  fontSize: 30.0,
              ),
            ),
            ),
            //Button
            Container(
              height: 50.0,
              //color: Colors.amberAccent,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  elevation: 5,
                  shadowColor: Colors.red,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  )
                ),
                child: Text('TextButton',
                style: TextStyle(
                  fontSize: 25.0
                ),),
                onPressed: (){
                  setState(() {
                    print('hii');
                  });
                },
              ),
            ),
            Container(
              height: 50.0,
              //color: Colors.amberAccent,
              child: ElevatedButton(
                style: TextButton.styleFrom(
                    //backgroundColor: Colors.pinkAccent,
                    elevation: 5,
                    shadowColor: Colors.red,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    )
                ),
                child: Text('TextButton',
                  style: TextStyle(
                      fontSize: 25.0
                  ),),
                onPressed: (){
                  setState(() {
                    print('hii');
                  });
                },
              ),
            ),
            Container(
              height: 50.0,
              //color: Colors.amberAccent,
              child: OutlinedButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 5,
                    shadowColor: Colors.red,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    )
                ),
                child: Text('TextButton',
                  style: TextStyle(
                      fontSize: 25.0
                  ),),
                onPressed: (){
                  setState(() {
                    print('hii');
                  });
                },
              ),
            ),
            //CheckBox
            Container(
              child: Checkbox(
                activeColor: Colors.deepOrange,
                value: isChecked,
                checkColor: Colors.black,
                onChanged: (value){
                  setState(() {
                    isChecked=!isChecked;
                  });
                },
              ),
            ),
            //Switch
            Container(
              child: Switch(
                value: isSwitch,
                onChanged: (value){
                  setState(() {
                    isSwitch=!isSwitch;
                  });
                },
              ),
            ),
            //Radio Button
            ListTile(
              title: Text('male'),
              leading: Radio(
                value: gender.male,
                groupValue: _gen,
                onChanged: (value){
                  setState(() {
                    _gen=gender.male;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('female'),
              leading: Radio(
                value: gender.female,
                groupValue: _gen,
                onChanged: (value){
                  setState(() {
                    _gen=gender.female;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('other'),
              leading: Radio(
                value: gender.other,
                groupValue: _gen,
                onChanged: (value){
                  setState(() {
                    _gen=gender.other;
                  });
                },
              ),
            ),
            //Slider
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.volume_down,
                  ),
                  Expanded(
                      child:Slider(
                        value: value,
                        min: 1.0,
                        max: 10.0,
                        activeColor: Colors.red,
                        inactiveColor: Colors.amberAccent,
                        onChanged: (changedValue){
                          setState(() {
                            value=changedValue;
                          });
                        },
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
