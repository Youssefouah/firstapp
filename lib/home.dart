
// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return Mycalculte();
  }
}

// ignore: camel_case_types
class Mycalculte extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,    
      body:Center(
        child: Padding(
        padding: const EdgeInsets.only(top: 40,bottom: 20,left: 10,right: 10),
        child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Screen(context,"Hello",const Color.fromARGB(255, 240, 142, 135)),
                Screen(context,"Hi",Colors.yellow),
                Body_calculte(context),                                                                                                
           ])
           ),
      ),
    );
  }

}

// ignore: non_constant_identifier_names
Widget Screen(BuildContext context,String? result,Color resultcolor){
   return Container(
     width:MyappConsts.width,
     height:30,
     margin: const EdgeInsets.all(10),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.end,
       children: [
         Text("$result",
         style: TextStyle(color: resultcolor)
         ,),]
         )
  );
}



// ignore: non_constant_identifier_names
Widget button_actual(BuildContext context,String? btntext,int? type){
  // ignore: prefer_typing_uninitialized_variables
  if (type ==0){
    return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
      color:  const Color.fromARGB(0, 66, 63, 63),
      border: Border.all(
        width: 2,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      boxShadow: [
        BoxShadow(
        color: const Color.fromARGB(255, 75, 68, 68).withOpacity(0.5),
        spreadRadius: 0,
        blurRadius: 3,
        offset: const Offset(3, 3), 
          )],
    ),
    child: Center(
      child: FloatingActionButton(
             backgroundColor:const Color.fromARGB(0, 66, 63, 63) ,
             child: Text("$btntext"
             ,style: const TextStyle(color: Colors.yellow )),
             onPressed: () {  },)),
  );
  }
  else{
    return Container(
    height: 120,
    width: 60,
    decoration: BoxDecoration(
      color:  const Color.fromARGB(255, 235, 212, 13),
      border: Border.all(
        width: 2,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      boxShadow: [
        BoxShadow(
        color: const Color.fromARGB(206, 210, 212, 64).withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 3,
        offset: const Offset(3, 3),  
          )],
    ),
    
    child: Center(
      child: MaterialButton(
        height:120 ,
        shape: const StadiumBorder(),
        color:  Colors.yellow,
        child: Text("$btntext",style: const TextStyle(color: Colors.black )),
        onPressed: () {  },
      )),
  );
  }
}

// ignore: non_constant_identifier_names
Widget Body_calculte(BuildContext context){
   return Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Column(
         children: [
        Row(
         children: [
            button_actual(context, 'AC',0),
            button_actual(context, '/',0),
            button_actual(context, 'X',0),
         ],),
        Row(
          children: [
            button_actual(context, '7',0),
            button_actual(context, '8',0),
            button_actual(context, '9',0),
                             ]),  
        Row(
          children: [
            button_actual(context, '4',0),
            button_actual(context, '5',0),
            button_actual(context, '6',0),
                             ]),
        Row(
            children: [
                button_actual(context, '1',0),
                button_actual(context, '2',0),
                button_actual(context, '3',0),
                             ]),   
        Row(
            children: [
                button_actual(context, '%',0),
                button_actual(context, '0',0),
                button_actual(context, '.',0),
                             ]),
         ],),                                                        
       Column(
              children: [
                  button_actual(context, '<=',0),
                  button_actual(context, '-',0),
                  button_actual(context, '+',0),
                  button_actual(context, '=',1),
              ],
            )   
     ],
   );
}

class MyappConsts{
  static const double width=200;

}