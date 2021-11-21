import 'package:azkar/config/constanst.dart';
import 'package:azkar/ui/drawer.dart';
import 'package:azkar/util/util.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class MainHome  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.color_main,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.amber,
        title:
        Text("الأذكار",style: TextStyle(
            fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),) ,
        leading:
          IconButton(onPressed:(){}, icon: Icon(Icons.search,color: Colors.white,size: 30,)),
        actions: [
          IconButton(onPressed:(){
          Util.go_screen(context, BuildDrawer());
          }, icon: Icon(Icons.menu,color: Colors.white,size: 30,)),
        ],

      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
        },
        backgroundColor: Colors.amber,
        elevation: 4.0,
        child:Icon(Icons.home,color: Colors.white,) ,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: const EdgeInsets.only(top:18.0),
        child: ListView.separated(itemBuilder: (context,index){

          return Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.amber
              ),
              child:Directionality(
                textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text("اذكار المساء",textAlign: TextAlign.center,),
                  ))

          );
        },
            separatorBuilder: (context,index)=>SizedBox(height: 30,),
            itemCount: 10),
      )
    );
  }
}
