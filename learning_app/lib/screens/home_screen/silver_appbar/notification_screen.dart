import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Notification',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black),),
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        )
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Today',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.black),),
              Container(
               padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue.shade50,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Admin',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.black)),
                        Text('2h 47min ago',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.black87))
                      ],
                    ),

                    Text('Asked to join online courses regarding professional web designing',style: TextStyle(fontSize: 18,color: Colors.black54))
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue.shade50,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Admin',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.black)),
                        Text('2h 47min ago',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.black87))
                      ],
                    ),

                    Text('Asked to join online courses regarding professional web designing',style: TextStyle(fontSize: 18,color: Colors.black54))
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text('Yestarday',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.black),),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black12,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Admin',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.black)),
                        Text('2h 47min ago',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.black87))
                      ],
                    ),
                    Text('Asked to join online courses regarding professional web designing',style: TextStyle(fontSize: 18,color: Colors.black54))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
