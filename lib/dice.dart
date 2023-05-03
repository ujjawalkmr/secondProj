import 'package:flutter/material.dart';
import 'dart:math';
import 'simpleButton.dart';

void main() {
  runApp( DicePage(),
  );
}

//Using the stateful widget for changeble in runtime or user interface
class DicePage extends StatefulWidget {

  @override
  DicePageState createState() => DicePageState();
}

class  DicePageState extends State<DicePage> {



  int leftCount=5;
  int rightCount=1;
  //functionalities of change the dice number when click the dice
  void main(int count){
    //It is method of onPresed ,it is used to for when i click the dice will be change
    setState(() {
      //It is change the left dice
     if(count==leftCount)
       {
         leftCount=Random().nextInt(6)+1;
         print('left button click');
       }
     //it is changed the right dice
     else{
       rightCount=Random().nextInt(6)+2;
       print('Right button click');
     }
    });
  }



  //abstract method of StatefulWidget
  @override
  Widget build(BuildContext context) {
    print(leftCount);
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            //this Icon appbar use for move back to the previus page
            leading: TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
              ),
            ),
            actions: [
              TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SimpleButton()));
                  },
                  child: Icon(
                    Icons.move_down
                  )
              )
            ],
            //this is foe give the text in  center of the appbar
            centerTitle: true,
            title: Text(
                'Dicee'
            ),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child:  Row(
              children:<Widget> [
               //Useing Expended because when i use this then our features are not facing any issue when phone is rotation mode
                Expanded(
                   //TextButton for tapping
                  child: TextButton(
                    //It is a method of TextButton which is used to tapping
                      onPressed: (){
                      //method calling
                        main(leftCount);
                      },
                      child: Image.asset('images/dice$leftCount.webp')) ,
                ),
                Expanded(
                  child: TextButton(
                      onPressed: (){
                        main(rightCount);
                      },
                      child: Image.asset('images/dice$rightCount.webp')) ,
                ),
              ],
            ),
          )
      ),
    );
  }
}




















