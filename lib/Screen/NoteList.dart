

import 'package:flutter/material.dart';
class NoteList extends StatefulWidget {
  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title:Text('Notes'),
    ),
    body: getNoteListView(),
   
floatingActionButton: FloatingActionButton(onPressed: ()
{
  debugPrint("hello");
}),      
    );
    
  }
}
ListView getNoteListView(){
       //TextStyle titleStyle=Theme.of(context).textTheme.subhead;
      return ListView.builder(
        //itemCount:count,
        itemBuilder:(BuildContext context, int position)
        {
          return Card(
            color:Colors.white,
            elevation:2.0,
            child:ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Icon(Icons.keyboard_arrow_right),
              ),
              title: Text("dummy title", ),
              subtitle: Text("duumy date"),
              trailing: Icon(Icons.delete,color: Colors.grey,),
              onTap: (){
                debugPrint("ok");
              },
              ) 
          );
        }
      );

    }
