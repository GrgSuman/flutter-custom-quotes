import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1581439645268-ea7bbe6bd091?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=282&q=80",
              ),
              fit: BoxFit.contain,
              colorFilter: ColorFilter.mode(Color.fromRGBO(54, 50, 55, 0.2), BlendMode.dstATop)
          )
        ),
    
    
        child:SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Expanded(
                flex: 1,
                child: Container(
                    child: Column(
                      children: [
                      SizedBox(height:100),

                      Center(child: Text(
                        "Motivational",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30
                          ),
                          )
                          ),

                      Center(child: Text(
                        "Quotes",
                        style: TextStyle(
                          // color: Color.fromRGBO(208, 150, 131, 1),
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                          ),
                          )
                          ),
                      ],
                    ),
                ),
              ),

              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: [

                      SizedBox(height:20),


                      Image.asset(
                        "assets/images/png.png",
                        height: 100,
                        width: 100,
                        ),

                      SizedBox(height:50),


                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal:50),
                         child: Center(child: Text(
                          "Do one thing every day that scares you",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 20
                            ),
                            )
                            ),
                       ),

                       Container(
                         margin: EdgeInsets.symmetric(horizontal: 50,vertical: 30),
                         width: double.infinity,
                         height:45,
                         child: ElevatedButton(
                           onPressed: (){
                             
                           },
                           child: Text("Get Started"),
                           style: ElevatedButton.styleFrom(
                             shape:RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(30)
                             )
                           ),
                         ),
                       ),

                    ],
                  ),
                ),
              )



             
            ],
          ),
        )
        
      ),
    );
  }
}




