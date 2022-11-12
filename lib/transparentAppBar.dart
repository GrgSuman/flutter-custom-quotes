import 'package:flutter/material.dart';


class TransparentAppBar extends StatelessWidget {
  const TransparentAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Transparent AppBar"),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),

      body: Container(
        child: Image.network(
          "https://images.unsplash.com/photo-1419242902214-272b3f66ee7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=787&q=80",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),

      ),
      
    );
  }
}