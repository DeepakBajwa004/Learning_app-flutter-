import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_screen/silver_appbar/cart_screen.dart';
import '../home_screen/silver_appbar/notification_screen.dart';
class MyCourses extends StatelessWidget {
  const MyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
             padding: EdgeInsets.symmetric(horizontal: 20,vertical: 45),
              height: MediaQuery.of(context).size.height/5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(100),bottomLeft: Radius.circular(30)),
                gradient: LinearGradient(
                  colors: [
                    Colors.lightBlue,
                    Colors.blue.shade700,
                    Colors.blueAccent,
                  ]
                )
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi Masoom,",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
                      Text("Let's Start Learning",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),)
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.to(()=>CartScreen());
                        },
                        child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.blue[400],
                            ),
                            child: Icon(Icons.shopping_cart_outlined)
                        ),
                      ),
                      SizedBox(width: 14,),
                      GestureDetector(
                        onTap: (){
                          Get.to(()=>NotificationScreen());
                        },
                        child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.blue[400],
                            ),
                            child: Icon(Icons.notification_add)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20),
              child: Column(
                children: [
                  Text('My couses',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: 20,),
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height/2.7,
                        width: MediaQuery.of(context).size.width/1-100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
