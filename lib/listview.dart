import 'package:flutter/material.dart';
import 'listBuilder.dart';
void main(){
  runApp(ListWidget(),);
}

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            //this button is used to move back on colrow page
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
            title: Text('List'),
          ),
          body: ListView(
            children: ListTile.divideTiles(
                context: context,
                tiles: [
                  ListTile(
                    title: Text('hii'),
                  ),
                  ListTile(
                    title: Text('hii'),

                  ),
                  //this Container is used to go forward to listBuilder page
                  Container(
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ListBuilder()));

                      },
                      child: Text('changeScreen for list builder'),
                    ),
                  )

                ]
            ).toList(),
          )
      ),
    );
  }
}




