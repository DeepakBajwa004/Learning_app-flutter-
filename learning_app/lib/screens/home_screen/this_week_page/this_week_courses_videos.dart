import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/screens/home_screen/tutor_profile_page/tutor_profile_page.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({super.key, required this.imgUrl, required this.duration, required this.tutorName});


  final String imgUrl;
  final String duration;
  final String tutorName;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children:[ Container(
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  // color: Colors.red
                ),
                child: Image.network(imgUrl,fit: BoxFit.cover,),
              ),
                Positioned(
                  top: MediaQuery.of(context).size.height/20,
                    left: MediaQuery.of(context).size.width/20,
                    child: IconButton(
                      onPressed: () {
                       Get.back();
                      },
                      icon: Icon(Icons.arrow_back,size: 30,color: Colors.white,),
                    )
                )
              ]
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Get.to(()=>TutorProfilePage());
                            },
                              child: Text(tutorName)
                          ),
                          Icon(Icons.person,color:Colors.orange,),
                        ],
                      ),

                      Icon(Icons.save,color: Colors.orange,)
                    ],
                  ),
                  Text("Ui/Ux course Beginner to Advanced",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  Text("24 min",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.orange),),
                  SizedBox(height: 20,),
                  Text("About this course",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                  SizedBox(height: 10,),
                  Text("All type of educational & professional courses avilable online.",style: TextStyle(fontSize: 18,color: Colors.black38,),),
                  SizedBox(height: 20,),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Row(
                  //       children: [
                  //         Icon(Icons.play_lesson,color: Colors.deepPurple,),
                  //         Text("Lesson",style: TextStyle(color: Colors.deepPurple,fontSize: 20),),
                  //       ],
                  //     ),
                  //     Row(
                  //       children: [
                  //         Icon(Icons.file_copy,color: Colors.deepPurple,),
                  //         Text("Files",style: TextStyle(color: Colors.deepPurple,fontSize: 20),),
                  //       ],
                  //     ),
                  //     Row(
                  //       children: [
                  //         Icon(Icons.chat,color: Colors.deepPurple,),
                  //         Text("Chat",style: TextStyle(color: Colors.deepPurple,fontSize: 20),),
                  //       ],
                  //     ),
                  //
                  //   ],
                  // ),

                  // Container(
                  //   height: 85.0*22,
                  //   //height: MediaQuery.of(context).size.height/2.2,
                  //   child: ListView.separated(
                  //     separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 10); },
                  //     physics: NeverScrollableScrollPhysics(),
                  //     itemCount: 20,
                  //     itemBuilder: (context , index){
                  //       return Container(
                  //         height: 80,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(10),
                  //           color: Colors.deepPurple.shade50,
                  //         ),
                  //         child: ListTile(
                  //           leading: Text("${index+1}",style: TextStyle(fontSize: 20,color: Colors.black38),),
                  //           title: Text("Introduction",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
                  //           subtitle: Row(
                  //             children: [
                  //               Icon(Icons.watch_later_rounded,color: Colors.orange,),
                  //               Text("24min",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.orange),),
                  //             ],
                  //           ),
                  //           trailing: Icon(Icons.play_circle,size: 50,color: Colors.deepPurple,),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
