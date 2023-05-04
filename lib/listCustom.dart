import 'package:flutter/material.dart';


void main(){
  runApp(ListCustom(),);
}


class ListCustom extends StatefulWidget {
  const ListCustom({Key? key}) : super(key: key);

  @override
  State<ListCustom> createState() => _ListCustomState();
}

class _ListCustomState extends State<ListCustom> {
  @override
  final item=List<String>.generate(30,(i)=>'Item $i');
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //this is used to move back to the listSeparator page
          title: TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          )
        ),
        body: ListView.custom(
            childrenDelegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Card(
                    child: TextButton(
                      onPressed: (){},
                      child: Padding(
                        child: Text(item[index]),
                        padding: EdgeInsets.all(20.0),
                      ),
                    )
                );


              },
            )

        ),
      ),
    );

  }
}
