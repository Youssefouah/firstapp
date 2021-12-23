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
           child:Image.network('data:image/png;base64,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'),
             
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