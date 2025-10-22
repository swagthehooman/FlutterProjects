import 'package:coffee_app/widgets/login_buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  void _onPressed(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset("assets/images/WelcomePage.jpg",
                fit: BoxFit.fill,
              ),

              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "BrewBuddy", 
                      style: GoogleFonts.cormorantGaramond(
                        textStyle: Theme.of(context).textTheme.headlineLarge
                      ),
                    ),
                    Text("Your personal barista, perfected"),
                  
                    LoginButtons(
                      onPressed: _onPressed, 
                      text: "Let's get started..", 
                      icon: Icon(Icons.login)
                    ),

                    

                  ],
                )
              )
              // LoginButtons(_onPressed, "Login using Google", Icon(Icons.add))
            ],
          ),
    );
  }
}