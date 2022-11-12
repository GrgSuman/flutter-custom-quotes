import 'package:flutter/material.dart';

class SelectCategories extends StatefulWidget {
  const SelectCategories({ Key? key }) : super(key: key);

  @override
  _SelectCategoriesState createState() => _SelectCategoriesState();
}

class _SelectCategoriesState extends State<SelectCategories> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          child:  ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              child: ListTile(
                tileColor: Colors.amberAccent,
                
                selected: _selected,
                selectedTileColor: Colors.amber,
                leading: Icon(Icons.hourglass_empty_sharp),
                title: Text("Happiness",style: TextStyle(color:  _selected ? Colors.white:Colors.black),),
                onTap: (){
                     setState(() {
                       _selected = !_selected;
                     });
                },
                shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.horizontal(right: Radius.circular(30),left:Radius.circular(30)),
                    ),
              ),
            ),
          )
        ),
      ),
    );
  }
}