
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyHomeScreen(),
    );
  }
}
class MyHomeScreen extends StatelessWidget{
  const MyHomeScreen({Key? key}) : super(key: key);
Widget build(BuildContext context){
  
  return Scaffold(
    backgroundColor: Colors.black54,
    appBar: AppBar(
      title: Text('Messenger'), 
    ),
    body: Column(
    children: [
      CircleWidget(
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage('https://st.depositphotos.com/1428083/2946/i/600/depositphotos_29460297-stock-photo-bird-cage.jpg'),       
        ), 
       'Discussions'
      ),

      Row(
        children: [
          CircleWidget1(
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blueGrey.shade50,
              child: Icon(CupertinoIcons.add),   
            ), 
           'My Story'
          ),
          CircleWidget1(
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://st.depositphotos.com/1102976/1574/i/450/depositphotos_15744791-stock-photo-whiny-little-boy.jpg'),       
            ), 
           'Balla'
          ),
          CircleWidget1(
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://st3.depositphotos.com/10654668/13884/i/600/depositphotos_138844966-stock-photo-girl-playing-with-rubiks-cube.jpg'),       
            ), 
           'Mklthoum'
          ),
          CircleWidget1(
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfngy3AQedm8EnzWB0apxi3uTOF8UNWQLRdQ&usqp=CAU'),       
            ), 
           'Khadige'
          ),
        ],
      ),
      Divider(
        color: Colors.white,
        height: 10,
        thickness: 1,
        indent: 10,
        endIndent: 10,
      ),

      CircleWidget(
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage('https://st3.depositphotos.com/10654668/13884/i/600/depositphotos_138844966-stock-photo-girl-playing-with-rubiks-cube.jpg'),       
        ), 
       'Mklthoum'
      ),

      CircleWidget(
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage('https://st.depositphotos.com/1102976/1574/i/450/depositphotos_15744791-stock-photo-whiny-little-boy.jpg'),       
        ), 
       'Balla'
      ),
    
      CircleWidget(
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfngy3AQedm8EnzWB0apxi3uTOF8UNWQLRdQ&usqp=CAU'),       
        ), 
       'Khadige'
      ),
   

    ],
    )
  );
}
}

class CircleWidget extends StatelessWidget {

  final String text;
  final CircleAvatar circle;
  CircleWidget(this.circle,this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          CircleAvatar(child: circle),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child:Text(
              text,
              style:TextStyle(
                color: Colors.white
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}

class CircleWidget1 extends StatelessWidget {

  final String texte;
  final CircleAvatar circle;
  CircleWidget1(this.circle, this.texte);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(child: circle), 
              Padding( padding: const EdgeInsets.symmetric(vertical: 10), 
               child: Text(
                 texte,
                 style: TextStyle(
                   color: Colors.white
                  ),
                ),
              ),
            ],
            
          )
        ],
      )
    );
  }
}
