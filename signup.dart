import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login.dart';

void main () {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp() ;
  return runApp(my_app());
}
class my_app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.indigo.shade100,
        useMaterial3: false,
      ),
      home: login(),
    );
  }
}
class Signup extends StatelessWidget{
  Signup({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assests/images/register.png',),fit: BoxFit.cover),
          ),
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Text('Create',style: TextStyle(fontSize: 40,fontFamily: 'fonts',color: Colors.white),),
                // Text('Account',style: TextStyle(fontSize: 40,fontFamily: 'fonts',color: Colors.black),),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'Create\n',style: TextStyle(fontSize: 40,fontFamily: 'fonts',color: Colors.white)),
                      TextSpan(text: 'Account',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,fontFamily: 'fonts'
                      ,color: Colors.black,)),
                    ]
                  )),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.name,
                  
                  decoration: InputDecoration(
                    
                    hintText: 'Enter Your Name ',
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIconColor: Colors.white,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white,
                      )
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    )
                  ),
                ),
                SizedBox(height: 10,),
                 TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email ',
                    prefixIconColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ), enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white,
                      )
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      ),
                  ),
                ),
                SizedBox(height: 10,),
                 TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Password ',
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIconColor:  Colors.white,
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white,
                      )
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 300,
                  child: ElevatedButton(onPressed: (){
                    
                  }, child: Text('Sign Up')),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? '),
                    TextButton(
  onPressed: () {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => login(),
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
  child: Text("Login"),
),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}