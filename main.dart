import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
void main(){
  return runApp(my_app());
}
class my_app extends StatelessWidget{
@override
  Widget build(BuildContext context) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent,)); 
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: '',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      useMaterial3: false,
    ),
    home: MyHomePage(title: 'Add new task'),
    
  );
  }
}
class MyHomePage extends StatelessWidget{
  final String title;
  MyHomePage({Key? Key,required this.title}):super(key: Key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          margin: EdgeInsets.only(top: 10,left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                child: Text('Task Title',
                style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  )
                ),
                child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )
                ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Container(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text('Category',
                    style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,
                    ),
                    ),
                    
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.brown.shade50,
                        )
                      ),
                      padding: EdgeInsets.only(top: 35),
                    margin: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.brown.shade100,
                        child: Icon(Icons.school))),
                      Container(
                        padding: EdgeInsets.only(top: 35.0),
                        child: CircleAvatar(
                          child: Icon(Icons.favorite)),
                      ),
                      Container(
                       child: CircleAvatar(child: Icon(Icons.home),), 
                      ),
                      Container(
                        child: CircleAvatar(child: Icon((Icons.calendar_month_outlined)),),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.transparent,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.deepOrangeAccent.shade100,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                              blurStyle: BlurStyle.outer,
                            )
                          ]
                        ),
                        
                        width: 30,
                        height: 30,
                        child:  Icon(Icons.person),
                      )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}