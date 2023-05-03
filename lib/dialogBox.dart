import 'package:flutter/material.dart';
import 'package:test5/outlined.dart';
import 'dice.dart';

void main(){
  runApp(
     DialogBox(),
  );
}

class DialogBox extends StatefulWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return DialogBox2();
  }
}


class DialogBox2 extends StatefulWidget {
  const DialogBox2({Key? key}) : super(key: key);

  @override
  State<DialogBox2> createState() => _DialogBox2State();
}

class _DialogBox2State extends State<DialogBox2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          leading: Icon(Icons.male),
          actions: [
            Icon(Icons.search,)
          ],
        ),
         body: Center(
           child: Column(
             children:[
               //This is for AlertBox Cotainer and ShowDialog is used in thes Conatiner
               Container(
                 child: TextButton(
           onPressed: (){
         setState(() {
         showDialog(
         context: context,
         builder: (BuildContext context)
         {
         return Expanded(
           child: AlertDialog(
             title: Text('Conformation'),
              content: Text('Are you sure'),
                actions: [
                  TextButton(
                   onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>NormalColumn()));
                },
                child:Text('Cancle'),
             ),
                TextButton(
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>DicePage()));
                  },
                  child:Text('Accept'),
                ),
              ],
                 ),
               );
             }
              );
             });
           },
           child: Text('click here'),
         )

      ),
               //This is for SimpleDialogBox Container
               Container(
                 child: TextButton(
                   onPressed: (){
                     setState(() {
                       showDialog(
                           context: context,
                           builder: (BuildContext context)
                       {
                            return Expanded(
                                child:  SimpleDialog(
                                title: Text('SimpleDialog'),
                       children: [
                       SimpleDialogOption(
                       onPressed: (){},
                       child: Text('option 1'),
                       ),
                       SimpleDialogOption(
                       onPressed: (){},
                       child: Text('option 1'),
                       ),
                       SimpleDialogOption(
                       onPressed: (){},
                       child: Text('option 1'),
                       ),
                       ],
                       ),
                            );
                       }
                       );
                     });
                   },

                   child: Text('This is SimpleDialogBox'),
                 ),
               )
            ],

           ),
         ),
      ),
    );
  }
}




