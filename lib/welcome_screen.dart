import 'package:flutter/material.dart';

void main() => runApp(WelcomeScreen());

class WelcomeScreen extends StatelessWidget {


  Widget button(String name, Color color, Color textColor) {
    return Container(
      height: 60,
      width: 300,
      child: RaisedButton(
        onPressed: () {},
        child: Text(
          name,
          style: TextStyle(color: textColor),
        ),
        color: color,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.greenAccent, width: 2),
            borderRadius: BorderRadius.circular(30)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  child: Image.asset('images/cake2.jpg',
                  width: double.infinity,
                    height: double.infinity,
                  ),
                      color: Colors.white,
                )),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome to SUVIDHA Bakery',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.amberAccent),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("The Suvidha of Champions",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.orange
                      ),),
                    ],
                  ),
                ),
                Expanded(child: Column(
                  children: [
                    button('Login', Colors.greenAccent, Colors.white),
                    SizedBox(height: 20,),
                    button('Signup', Colors.white, Colors.green)
                  ],
                ))

              ],
            ),
          ),
        ),
      ),
    );
  }
}

