import 'package:flutter/material.dart';
import 'listCustom.dart';

void main(){
  runApp(ListSeparator(),);
}



class ListSeparator extends StatefulWidget {
  const ListSeparator({Key? key}) : super(key: key);

  @override
  State<ListSeparator> createState() => _ListSeparatorState();
}

class _ListSeparatorState extends State<ListSeparator> {

  @override
  Widget build(BuildContext context) {
    var name=['a','b','c','d','r'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //this used to move back to the listBuilder page
          leading: TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          //this button is used to go forward on listCustom page
          title: TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ListCustom()));
            },
            child: Icon(
              Icons.home,
              color: Colors.white,
            ),
          )
        ),
        body: ListView.separated(
            itemCount: name.length,
            itemBuilder: (context,index){
              return TextButton(onPressed: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>ListCustom()));
              },
                  child: Text('hlw')
              );

            }, separatorBuilder: (context,index){
          return Divider(height: 100, thickness: 2,);
        }
        ),
      ),
    );
  }
}
