import 'package:azkar/config/constanst.dart';
import 'package:flutter/material.dart';
class Elsebha extends StatefulWidget {


  @override
  State<Elsebha> createState() => _ElsebhaState();
}

class _ElsebhaState extends State<Elsebha> {
  int count =0;
  bool start=true;
  void increasecount() {
    setState(() {
      count++;
    });
  }
  void decreasecount() {
    setState(() {
      count--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.color_main,
        body: Container(
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 25,),
              Image.asset(Constant.image_logo,height: 180,width: 180,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  thickness: 3,
                  height: 1,
                  color: Colors.amber,
                ),
              ),
              SizedBox(height: 20,),
              IconButton(onPressed: (){
               setState(() {
                 count=0;
                 start=true;
               });
              },
                  icon: Icon(Icons.not_started_outlined,color: Colors.amber,size: 50,) ,
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("سبحان الله",style: TextStyle(color: Colors.amber,fontSize: 25),),
                  SizedBox(width: 40),
                  Text("سبحان الله",style: TextStyle(color: Colors.amber,fontSize: 25),),
                ],
              ),

              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("الحمدلله",style: TextStyle(color: Colors.amber,fontSize: 25),),
                  SizedBox(width: 177),
                  Text("الحمدلله",style: TextStyle(color: Colors.amber,fontSize: 25),),
                ],
              ),
              GestureDetector(
                onTap: (){
                  increasecount();
                  start=false;
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      shape:BoxShape.circle,
                      color: Colors.amber
                  ),
                  child: Center(child: Text("$count",style: TextStyle(fontSize: 25,color: Colors.white))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("لا اله الا الله",style: TextStyle(color: Colors.amber,fontSize: 25),),
                  SizedBox(width: 140),
                  Text("لا اله الا الله",style: TextStyle(color: Colors.amber,fontSize: 25),),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("الله اكبر",style: TextStyle(color: Colors.amber,fontSize: 25),),
                  SizedBox(width: 40),
                  Text("الله اكبر",style: TextStyle(color: Colors.amber,fontSize: 25),),
                ],
              ),
            ],

          ),

        ),
    );
  }
}
