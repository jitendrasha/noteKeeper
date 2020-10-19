import 'package:flutter/material.dart';
class NoteDetail extends StatefulWidget {
  @override
  _NoteDetailState createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {
  static var _priorities=['high','low'];
  TextEditingController text=TextEditingController();
  TextEditingController titleController=TextEditingController();

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title:Text("edit_notes"),

      ),
      body:Padding(padding:EdgeInsets.only(top:15.0,left:10.0,right:10.0),
      child: ListView(
        children:<Widget>[
          //first element
          ListTile(title:DropdownButton(
            items: _priorities.map((String dropDownStringItem)
            {
             return DropdownMenuItem<String>(
               value:dropDownStringItem,
               child:Text(dropDownStringItem), 
             );
            }).toList(),
            
            value: 'low',
            onChanged: (valueSelectedByUser)
            {
              setState(() {
                debugPrint("user selected $valueSelectedByUser");
              });
            }, 
            ),
             
          ),
          //second element
          Padding(padding:EdgeInsets.only(top:15.0,bottom:15.0),
          child: TextField(
            controller:titleController,
            //style: textStyle,
            onChanged: (value){
              debugPrint("some thing");
            },
            decoration: InputDecoration(
              labelText:'Title',
              border:OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))

            ),
          ),
          
           ),
           //third varibale
             Padding(padding:EdgeInsets.only(top:15.0,bottom:15.0),
          child: TextField(
            controller:text,
           // style: textStyle,
            onChanged: (value){
              debugPrint("some thing");
            },
            decoration: InputDecoration(
              labelText:'Discription',
              border:OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))

            ),
          ),
          
           ),
           Padding(padding:EdgeInsets.only(top:15.0,bottom:15.0),
           child: Row(
             children :<Widget>[

               Expanded(child:RaisedButton( 
               child:Text("Save",
               textScaleFactor:15
               ),
               onPressed: (){
                 setState(() {
                   debugPrint("save button click");
                 });
               },
               
               )
               ),
               Container(width:5.0),

                Expanded(child:RaisedButton( 
               child:Text("Delete",
               textScaleFactor:15
               ),
               onPressed: (){
                 setState(() {
                   debugPrint("save button click");
                 });
               },
               
               )
               ),


             ]
           ),
           ),
        ]
      ),
      
    ),
    );
  }
}