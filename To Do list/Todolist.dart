import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/projects/To%20Do%20list/todo.dart';
import 'package:my_app/projects/To%20Do%20list/toitem.dart';

class Home extends StatefulWidget{

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoslist=ToDo.todolist();
  List<ToDo> _foundtodo=[];
  final _todocontrol=TextEditingController();
   void initState() {
    super.initState();
    _foundtodo = todoslist; 
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 241, 243),
      appBar: _buildAppbar(),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Column(
              children: [
                searchBar(),
                Expanded(
              child: ListView(
                children: [
                  Container(
                    margin:EdgeInsets.only(
                      top: 50,
                      bottom: 20,
                      left: 10,
                    ),
                    child: Text('All ToDos',style: TextStyle(fontSize: 40,color: Colors.black,),),

                  ),
                  for(ToDo todo in _foundtodo)
                  Todoitem(todo: todo,ontodochange: _handletochange,
                  ontododelect:_delecttodo ,
                  ),
                ],
              ),
            )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child:Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 20,

                    ) ,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0.0, 0.0),
                          color: Colors.grey,
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                        
                      ],
                      borderRadius: BorderRadius.circular(15)
                    ), 
                    child: TextField(
                     
                      controller: _todocontrol,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Add New todo list',
                      ),
                    ), 
                  )
                   ),
                   Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      right: 20,
                    ),
                    child:Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 05,
                        vertical: 05,
                      ),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 0, 0, 0),
                            offset: Offset(5.0, 5.0),
                            blurRadius: 2,
                            spreadRadius: 0,
                          )
                        ]
                      ),
                      child: InkWell(
                        child: Icon(Icons.add,
                        color: Colors.white,
                        size: 35,
                        ),
                        onTap: () {
                          _todoAdd(_todocontrol.text);
                        },
                      ),
                    ),
                   )
              ],
            ),
          )
        ],
        
      )
    );
  }
  void _handletochange(ToDo todo) async {
    setState(() {
      
    });
    todo.isdone=!todo.isdone;
  }
  void _delecttodo(String id){
    setState(() {
      todoslist.removeWhere((item)=>item.id==id);
    });
  } 
  void _todoAdd(String toDo){
    setState(() {
      todoslist.add(ToDo(id:DateTime.now().microsecondsSinceEpoch.toString(),toDOtext:toDo));
    });
    _todocontrol.clear();
  }
void _found(String enterkeyword) {
    List<ToDo> result = [];
    if (enterkeyword.isEmpty) {
      result = todoslist;
    } else {
      result = todoslist
          .where((item) =>
              item.toDOtext != null &&
              item.toDOtext!.toLowerCase().contains(enterkeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundtodo = result;
    });
  }

  Widget searchBar(){
    return Container(
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: TextField(
                  onChanged: (value) {
                  _found(value);
                },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Icon(Icons.search,color: Colors.black,size: 20,),
                    prefixIconConstraints:BoxConstraints(
                      maxHeight: 20,
                      maxWidth: 25,
                    ), 
                    border: InputBorder.none,
                    hintText: 'Search',
                  ),
                  
                ),
              );
  }

  AppBar _buildAppbar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 243, 241, 243),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            size: 30,
            color: Colors.black,
          ),
          Container(
            height: 60,
            width: 60,
            child: ClipRRect(child: Image.asset('assests/images/avtar.png')),
          )
        ],
      ),
    );
  }
}