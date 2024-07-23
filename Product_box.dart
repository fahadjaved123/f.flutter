import 'package:flutter/material.dart';
import 'package:my_app/new.dart';
import 'pro.dart';

void main()
{
  return runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'crud operations',
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: false,
        
      ),
      home: MyHomePage(title: 'Producting Listing',),
    );
  }
}
class MyHomePage extends StatelessWidget{
  final String title;
  
  MyHomePage({Key? key,required this.title}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: [
          productbox(
            name: 'Iphone',
            description: 'Iphone is expensive phone',
            price: 100000,
            image: 'iphone.jpg',
          ),
          productbox(
            name: 'Laptop',
            description: ' Laptop is most productive development tool',
            price: 60000,
            image: 'laptop.jpg',
          ),
          productbox(
            name: 'Tablet',
            description: 'Tablet is most usefull device',
            price: 50000,
            image: 'tablet (1).jpg',
          ),
          productbox(
            name: 'Pendrive',
            description: 'Pendrive is usefull for data sharing',
            price: 1500,
            image: 'pendrive.jpg',
          ),
          productbox(
            name: 'Samsong',
            description: 'Samsong is compititive of Iphone ',
            price: 90000,
            image: 'android.jpg',
          ),
          productbox(
            name: 'Pc',
            description: 'Pc is most usefull device',
            price: 10000,
            image: 'pc.jpg',
          ),
          productbox(
            name: 'Tablet',
            description: 'Tablet is most usefull device',
            price: 50000,
            image: 'pendrive.jpg',
          ),
        ],
      )
    );
  }
}