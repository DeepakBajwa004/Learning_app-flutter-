import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Transation history',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('UI UX desgin',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              SizedBox(height: 20,),
              SafeArea(
                child: Container(
                  height: MediaQuery.of(context).size.height/4.5,
                  width: MediaQuery.of(context).size.width,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // color: Colors.red
                  ),
                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfgv7iuM1Exo9z5llQKVSg4NBicDOQ6BoInQ&s',fit: BoxFit.cover,),
                ),
              ),
              SizedBox(height: 30,),
              Center(child: Text('Course Completion Rate',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
              SizedBox(height: 30,),

              Center(
                child: CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 6.0,
                  percent: 0.80,
                  center: new Text("100%",style: TextStyle(fontSize: 25),),
                  progressColor: Colors.orange,
                ),
              ),
              SizedBox(height: 30,),

              Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue.shade50
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Course',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54)),
                        SizedBox(height: 10,),
                        Text('65',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.deepPurple)),
                      ],
                    ),
                    Container(
                     height: 70,
                      width: 3,
                      color: Colors.deepPurple,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Completion',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54)),
                        SizedBox(height: 10,),
                        Text('30',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange)),
                      ],
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
