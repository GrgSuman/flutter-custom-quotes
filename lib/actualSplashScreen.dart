import 'package:flutter/material.dart';

class ActualSplashScreen extends StatelessWidget {
  const ActualSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      body: Container(
        height: double.infinity,
        width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1581439645268-ea7bbe6bd091?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=282&q=80",
                  ),
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(
                      Color.fromRGBO(54, 50, 55, 0.2), BlendMode.dstATop))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                "Motivational",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Text(
                "Quotes",
                style: TextStyle(
                    color: Color.fromRGBO(208, 150, 131, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
                    ],
                  ),
         
          ),
    );
  }
}
