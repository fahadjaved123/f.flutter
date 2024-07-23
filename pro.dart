 import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget{
  final String title;
  MyHomePage({Key? key,required this.title}):super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:Card(
        child: ListView(
          padding: EdgeInsets.fromLTRB(2, 10, 2, 10),
          children:<Widget> [
            productbox(
              name:'Iphone',
              description:'iphone is expensive phone',
              price:'100,000',
              image:"assest/images/iphone.jpg",
            ),
            productbox(
              name:'Laptop',
              description:'laptop is best',
              price:'70,000',
            image:'assest/images/laptop.jpg',
            ),
            productbox(
              name:'Pendrive',
              description: '16 GB samsong pendrive',
              price: '1500',
              image: 'assest/images/pendrive.jpg',
            )
          ],
        ),
      )
      );
  }
}
class productbox extends StatelessWidget{
  productbox({Key? key,this.name,this.description,this.price,this.image}):super(key: key);
  final String? name;
  final String? description;
  final String? price;
  final String? image; 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
               Image.asset(image!,height: 100,width: 100,),
              Expanded(
                child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(margin:EdgeInsets.all(9),
                     child:  Text(this.name!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'play'),)),
                      Text(this.description!,style: TextStyle(fontSize: 15,fontFamily: 'fonts'),),
                      Text('price'+this.price.toString()),
                    ],
                  ),
                )
                
            ],
          ),
        ),
      ),
    );
  }

}