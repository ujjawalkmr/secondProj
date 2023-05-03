import 'package:flutter/material.dart';
import 'appalertbox.dart';
import 'package:test5/elevetedButton.dart';
import 'package:test5/outlined.dart';


//This is for radio button
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Task'),
        ),
        body: MyApp2(),
      ),
    );
  }
}








class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  //This is for checkedbox
  bool isChecked=false;
  bool isSwitch=false;//Switch
  gender _gen=gender.male;//radio button
  double value=1.0;//Slider
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //This container is used to text only
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
        //TextButton,use to open appalertbox page
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
              //use to open appalertbox page
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAppBar()));

            },
          ),
        ),
        //ElevetedButton which is alos used to the elevetedbutton file(ScrollBar page)
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
            child: Text('ElevetedButton',
              style: TextStyle(
                  fontSize: 25.0
              ),),
            onPressed: (){
              //this is move to ScrollBar page means elevetedButton
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ScrollBar()));

            },
          ),
        ),
        //OutlinedButton and also used to goto outlined(NormalColumn)
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
            child: Text('OutlinedButton',
              style: TextStyle(
                  fontSize: 25.0
              ),),
            onPressed: (){
              //this is used to goto outlined(NormalColumn)
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NormalColumn()));
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
        //male
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
        //Female
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
        //Other
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
    );
  }
}

