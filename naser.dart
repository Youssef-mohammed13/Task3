import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class naser extends StatefulWidget {
  const naser({Key? key}) : super(key: key);

  @override
  State<naser> createState() => _naser();
}
class _naser extends State<naser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.green,
          title: Text('سورة الفاتحة',style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: Colors.white),
          ),
          centerTitle: true,
        ),
        body:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Image.asset('test/assets/mr (2)png.jpg',height: 150,width: 150,),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(onPressed:() async {
                  final player = AudioPlayer();
                  await player.play(UrlSource('test/assets/fatiha_n.mp3'));

                },
                  child: Text('اضغط للتشغيل',),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade300,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(onPressed:(){
                  Navigator.pop(context);
                },
                  child: Text('Back',),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade300,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                  ),

                )
              ],
            ),

          ],)
    );

  }

}
