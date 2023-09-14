
import 'package:flutter/material.dart';
import 'Homescreen.dart';
import 'mshary.dart';
import 'naser.dart';
import 'yaser.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.green,
title: Text('سورة الفاتحة',style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: Colors.white),
),
  centerTitle: true,
),
    body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Column(
         children: [
           SizedBox(
             height: 50,
           ),
          Image.asset('test/assets/mr (1)png.jpg',height: 130,width: 130,),
          SizedBox(
          height: 10,
         ),
        // Text('الشيخ مشاري راشد', style: TextStyle(color: Colors.blueGrey.shade500,fontSize:15,fontWeight:FontWeight.bold),),
          ElevatedButton(onPressed:() {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const mshary()),
            );
          },
            child: Text('الشيخ مشاري راشد'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.greenAccent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ],),
          //Padding(padding: const EdgeInsets.symmetric(horizontal: 30,)),
        SizedBox(
          width: 30,
        ) ,
        Container(
            height: 500,
            child: VerticalDivider(
              color: Colors.cyanAccent.shade700,
              thickness: 2,
              indent: 2,
              endIndent: 330,
            ),

          ),
          //Column 2----------------
        SizedBox(
          width: 30,
        ) ,
        Column(
          children: [
            SizedBox(
              height: 50,
            ),
          Image.asset('test/assets/mr (2)png.jpg',height: 130,width: 130,),
    SizedBox(
    height: 10,
    ),
    // Text('الشيخ مشاري راشد', style: TextStyle(color: Colors.blueGrey.shade500,fontSize:15,fontWeight:FontWeight.bold),),
    ElevatedButton(onPressed:() {
      Navigator.push(context,
      MaterialPageRoute(builder: (context)=> const naser())
      );
    },
    child: Text('الشيخ ناصر القطامي'),
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.greenAccent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    ),
    ],),
        SizedBox(
          width: 30,
        ) ,
        //Padding(padding: const EdgeInsets.symmetric(horizontal: 30,)),
          Container(
            height: 500,
            child: VerticalDivider(
              color: Colors.cyanAccent.shade700,
              thickness: 2,
              indent: 2,
              endIndent:330,
            ),
          ),
          //column3----------
        SizedBox(
          width: 30,
        ) ,
        Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset('test/assets/mr (3)png.jpg',height: 130,width: 130,),
              SizedBox(
                height: 10,
              ),
              // Text('الشيخ مشاري راشد', style: TextStyle(color: Colors.blueGrey.shade500,fontSize:15,fontWeight:FontWeight.bold),),
              ElevatedButton(onPressed:() {
                Navigator.push(context,

                MaterialPageRoute(builder: (context)=> const yaser() )
                );

              },
                child: Text('الشيخ ياسر الدوسري'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ],),

    ],),
    );
  }
}
