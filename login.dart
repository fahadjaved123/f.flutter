import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'signup.dart';
class login extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assests/images/login.png'),fit: BoxFit.cover)
        ),
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome \n Back ',style: TextStyle(fontSize: 40,fontFamily: 'fonts',color: Colors.black),),
                SizedBox(height: 10,),
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Enter Your User Name',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIconColor: Colors.black,
                    prefixIcon: Icon(Icons.person),
                    
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  obscureText: false,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                     border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Enter Your Password',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIconColor: Colors.black,
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){

                },child: Text('Login'),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have any account?"),
                    TextButton(
                      onPressed: () {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>Signup(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(3.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.fastEaseInToSlowEaseOut;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  },
                    child: Text('Sign Up'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}