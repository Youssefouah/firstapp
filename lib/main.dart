import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    home:Scaffold(
         appBar:AppBar(),
         drawer:Drawer(),
         body:Column(
           //mainAxisAlignment: MainAxisAlignment.spaceAround,

           children:[
           Container(

           height:100,
           alignment: Alignment.center,
           child:Image.network(''),

           ),
           //for space
           Container(height: 20),
           Text('Mot de passe requis'),
           Container(height: 20),//space,
           Container(
            width:500,
            child:Text('''Veuillez saisir le mot de passe de votre compte en  ligne Attigari bank pour active la connexion par empriente dugitale sur lapplication atttigari wafbank''',
                 maxLines: 20,textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0 ,color: Colors.black)))
           ,
           Container(height: 30),//space
           // box password
           Container(
            width:300,
             alignment: Alignment.center,
            child:TextField(
              obscureText: true,
              // change color cursor
              cursorColor: Colors.red,
              decoration: InputDecoration(
                //undeline with text
                focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red),),
                border: OutlineInputBorder(
                borderSide: BorderSide.none,),
                fillColor: Colors.yellow[200],
                filled: true,
              ))),
           Container(height: 70),//space
           // bottom page
           Container(
           margin:EdgeInsets.only(left:10),
           child:Row(
           children:[
            Checkbox(
            value : false,
            onChanged: (bool? value){

              },
            ),
        Text('I am true now'),
             ]
           )),//row
        Container(height: 10),//space
        Container(
         alignment: Alignment.center,
        child:Row(
        children:[
          //Container for button1
          Container(
          width:150,
          height:40,

            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.red)
              ),
          margin: EdgeInsets.only(left:20),
          child:FlatButton(
                child: Text(
                  'Button 1',
                  style: TextStyle(fontSize: 10),
                ),
                onPressed: () {},
              ),),
        Container(width:10),
        //contaioner for Button2
        Container(
          width:150,
          height:40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.red)
              ),
          child:FlatButton(

                child: Text(
                  'Button 2',
                  style: TextStyle(fontSize: 10),
                ),
                onPressed: () {},
              ),),
        ]),
        )
           ]),
  ),

  );


}}
