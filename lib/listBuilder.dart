import 'package:flutter/material.dart';
import 'listSeparator.dart';

void main(){
  runApp(ListBuilder(),);
}
class ListBuilder extends StatefulWidget {
  const ListBuilder({Key? key}) : super(key: key);

  @override
  State<ListBuilder> createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  var name=['a','b','c','d','r'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListViewBulider'),
          //This button is used to move back to the listview page
          leading: TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context,index){
            return TextButton(onPressed: (){
              // this is used to gor forward to the listSeparator page
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ListSeparator()));

            },
                child: Text(
                  name[index],
                  style: TextStyle(fontSize: 20,
                      color: Colors.red),

                )
            );

          },
          itemCount: name.length,
          itemExtent: 100,
        ),
      ),
    );
  }
}
