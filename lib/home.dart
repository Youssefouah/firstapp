
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
      drawer: const Drawer(),
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 50,bottom:10,left:5,right: 5),
          color: Colors.black,
          child: Column(
            children: [
              Screen(context),
              Body_calculte(context)]),
        ),
      ),
    );
  }

}

Widget Screen(BuildContext context){
   return Container(
     width:MyappConsts.width,
     height:70,
     margin: const EdgeInsets.all(10),
     child: const TextField(
       maxLines:2,
       decoration: InputDecoration(
         border:OutlineInputBorder(

         borderRadius:BorderRadius.all(const Radius.circular(10))
         ), 
       )
     ),
  
   );
}

Widget frome(BuildContext context,String? num){
  return Container(
    height: 40,
    width: 40,
    
    decoration: BoxDecoration(
      color:Colors.black,
      border: Border.all(
        width: 2,
      ),
      borderRadius: BorderRadius.all(Radius.circular(30))
    ),
    child: Center(
      child: Text("$num",style: const TextStyle(color: Colors.yellow),)),
  );
}

Widget operation(BuildContext context,String? oper,double? heigh ,Color? plusColor){
  // ignore: prefer_typing_uninitialized_variables
  var plusColor;
  return Container(
    height: heigh,
    width: 40,
    decoration: BoxDecoration(
      color: plusColor?? Colors.transparent,
      border: Border.all(
        width: 2,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(30))
    ),
    child: Center(
      child: Text("$oper",style: const TextStyle(color: Colors.yellow ))),
  );
}

Widget Body_calculte(BuildContext context){
  return Container(
    width:MyappConsts.width,
    margin: const EdgeInsets.only(left: 10,right: 10),
    child: Row(
      children: [
        //system numbers 
        SizedBox(
           child: neural_numerique(context),
        ),
        //system operation
        const SizedBox(width: 5,),
        SizedBox(
            child:Column(
              children: [
                operation(context, "<=",40,null),
                const SizedBox(height: 10),
                operation(context, "-",40,null),
                const SizedBox(height: 10,),
                operation(context, "+",40,Colors.yellow),
                const SizedBox(height: 10,),
                operation(context, "=",90,null),
              ]),
        )
      ],),
  );
}

Widget neural_numerique(BuildContext context){
   return Column(
     children: [
       Row(
         children: [
          operation(context, "AC",40,null),
          const SizedBox(width: 10,),
          operation(context, "/",40,null),
          const SizedBox(width: 10,),
          operation(context, "X",40,null),
          const SizedBox(width: 10,),
         ],),
      const SizedBox(height: 10,),   
      Row(
         children: [
          frome(context, "7"),
          const SizedBox(width: 10,),
          frome(context, "8"),
          const SizedBox(width: 10,),
          frome(context, "9"),
          const SizedBox(width: 10,),
         ],),
      const SizedBox(height: 10,),   
      Row(
         children: [
          frome(context, "4"),
          const SizedBox(width: 10,),
          frome(context, "5"),
          const SizedBox(width: 10,),
          frome(context, "6"),
          const SizedBox(width: 10,),
         ],),
      const SizedBox(height: 10,),   
      Row(
         children: [
          frome(context, "1"),
          const SizedBox(width: 10,),
          frome(context, "2"),
          const SizedBox(width: 10,),
          frome(context, "3"),
          const SizedBox(width: 10,),
         ],),
      const SizedBox(height: 10,),   
      Row(
         children: [
          frome(context, "%"),
          const SizedBox(width: 10,),
          frome(context, "0"),
          const SizedBox(width: 10,),
          frome(context, "."),
          const SizedBox(width: 10,),
         ],)     
     ],);
}

class MyappConsts{
  static const double width=200;

}