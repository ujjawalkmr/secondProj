import 'package:flutter/material.dart';
import 'main.dart';
class MyAppBar extends StatefulWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      MyApp2(),

    );
  }
}




class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  //This is method for search and menu icon for AlertBox
  void m1(){
    setState(() {
      showDialog(
          context: context,
          builder:(BuildContext context)
          {
            return AlertDialog(
              title: Text('Alert Diog'),
              content: Text(
                  'Alert Dilog Clicked'
              ),
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
      appBar: AppBar(
        //this is menu appbar when we click then show alertdilog
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: (){
            m1();
          },
        ),
        actions: [
          //this is used for move back to the first page (MyApp())
          Padding(padding: EdgeInsets.all( 10.0),
            child: TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
              },
              child: Icon(
                Icons.backspace,
                color: Colors.white,

              ),
            ),),
          //this is search appbar when we click then show alert dilog
          Padding(padding: EdgeInsets.all( 10.0),
            child: TextButton(
              onPressed: (){
                m1();
              },
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),),
        ],

      ),
        //this button when when we click then we can go to next page  with one icon and half appbar page with two icon(FirstPage)
      body: Center(
        //this button when when we click then we can go to next page  with one icon and half appbar page with two icon
            child:TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage()));
              },
              child: Icon(
                Icons.back_hand_outlined,
              ),
            )
      )
    );

  }
}


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}


//This class is one icon in left top corner and half appbar with two icon
class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          //This Container is used to give the icon in left top corner not in app bar and also used to move in next page(secondpage)
          Container(
            alignment: Alignment.topLeft,
            child: TextButton(
              onPressed: (){
                //this is used to move in next page (secondpage)
                Navigator.push(context, MaterialPageRoute(builder: (context)=>secondpage()));
              },
              child: Icon(
                Icons.email,
                size: 50,
                color: Colors.pinkAccent,
              ),
            ),
          ),
          //this used to give the space between appbar and container
          SizedBox(
            width: 10,
          ),
          //this is used to provide icon in appbar in trilling side
          Expanded(
            flex: 6,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: AppBar(
                    backgroundColor: Colors.pink,
                    toolbarHeight: 50,
                    actions: [
                      Icon(Icons.phone),



                    ],

                  ),

                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


//this is secondpage and it has appbar and moving to back page textbutton
class secondpage extends StatefulWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome'),
      ),
      //this is used to  move back text
      body: TextButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Text('Go to last page'),
      ),
    );
  }
}






