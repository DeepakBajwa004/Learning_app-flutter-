import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/screens/home_screen/this_week_page/this_week_courses_videos.dart';

import '../../../dummy_data/dummy_data.dart';

class ThisWeekDetails extends StatelessWidget {
  const ThisWeekDetails({super.key, required this.imgUrl, required this.name, required this.duration});

final String imgUrl;
final String name;
final String duration;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SafeArea(
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width/1.2,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // color: Colors.red
                    ),
                    child: Image.network(imgUrl,fit: BoxFit.cover,),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
              Text(duration,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.orange),),
              SizedBox(height: 20,),
              Text("About this course",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
              SizedBox(height: 10,),
              Text("All type of educational & professional courses avilable online.",style: TextStyle(fontSize: 18,color: Colors.black38,),),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.play_lesson,color: Colors.deepPurple,),
                      Text("Lesson",style: TextStyle(color: Colors.deepPurple,fontSize: 20),),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.file_copy,color: Colors.deepPurple,),
                      Text("Files",style: TextStyle(color: Colors.deepPurple,fontSize: 20),),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.chat,color: Colors.deepPurple,),
                      Text("Chat",style: TextStyle(color: Colors.deepPurple,fontSize: 20),),
                    ],
                  ),

                ],
              ),

             Container(
                 height: 85.0*22,
               //height: MediaQuery.of(context).size.height/2.2,
               child: ListView.separated(
                 separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 10); },
                 physics: NeverScrollableScrollPhysics(),
                   itemCount: 20,
                   itemBuilder: (context , index){
                 return GestureDetector(
                   onTap: (){
                     Get.to(()=>VideosPage(
                       imgUrl: DummyData.courses[0].imageUrl,
                       duration: DummyData.courses[0].duration,
                       tutorName: DummyData.courses[0].tutorName,));
                   },
                   child: Container(
                     height: 80,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.deepPurple.shade50,
                     ),
                     child: ListTile(
                       leading: Text("${index+1}",style: TextStyle(fontSize: 20,color: Colors.black38),),
                       title: Text("Introduction",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
                       subtitle: Row(
                         children: [
                           Icon(Icons.watch_later_rounded,color: Colors.orange,),
                           Text("24min",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.orange),),
                         ],
                       ),
                       trailing: Icon(Icons.play_circle,size: 50,color: Colors.deepPurple,),
                     ),
                   ),
                 );
               },
               ),
             ),


            ],
          ),
        ),
      ),
      floatingActionButton:  Padding(
        padding: const EdgeInsets.only(left: 50.0,right:17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
              width: 120,
              // width: MediaQuery.of(context).size.width-,
              child: ElevatedButton(onPressed: (){},
                child: Text('Add cart'),style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(color: Colors.deepPurple)
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width/2,
              child: ElevatedButton(onPressed: (){},
                child: Text('Buy now'),style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
