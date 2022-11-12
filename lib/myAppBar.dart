import 'package:flutter/material.dart';



class MyAppBar extends StatelessWidget {
  const MyAppBar({ Key? key }) : super(key: key);


    Widget home(){

      return Center(
        child: Stack(
          children: [
            
          Container(
            height: 200,
            width: 200,
            color:Colors.green
          ),
           Positioned(
             bottom: 0,
             right: 0,
             child: Container(
              height: 100,
              width: 100,
              color:Colors.red
                     ),
           ),

        ],)
      );
    
    }


    Widget chat(String text){

      return Center(
        child: Text("$text"),
      );
    
    }


    Widget notification(String text){

      return Center(
        child: Text("$text"),
      );
    
    }

    Widget settings(String text){

      return Center(
        child: Text("$text"),
      );
    
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
        appBar: AppBar(
          title: Text("Meditation"),
          titleSpacing: 0,
          // centerTitle: true,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          ],
          // backgroundColor: Colors.red,
          // if we want linear gradient then
          flexibleSpace: Container(
           decoration: BoxDecoration(


            //  gradient: LinearGradient(
            //    colors: [
            //      Colors.red,
            //      Colors.blue
            //    ],
            //    begin: Alignment.topLeft,
            //    end: Alignment.bottomRight
            //  )

            image: DecorationImage(
              image: NetworkImage("https://images.unsplash.com/photo-1419242902214-272b3f66ee7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=787&q=80"),
              fit: BoxFit.cover
            )


           ),
          ),

          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            isScrollable: true,
            tabs: [
               Tab(
              // icon: Icon(Icons.home),
              text: "Home",
            ),

            Tab(
              // icon: Icon(Icons.chat),
              text: "Chat",
            ),

             Tab(
              // icon: Icon(Icons.notifications),
              text: "Notifications",
            ),

             Tab(
              // icon: Icon(Icons.settings),
              text: "Settings",
            ),

            
          ],),
        ),


        body: TabBarView(children: [
          home(),
          chat("Chat"),
          notification("Notification"),
          settings("Settings"),
        ],
        ),

      );
  }



}