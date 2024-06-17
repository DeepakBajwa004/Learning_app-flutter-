import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/screens/home_screen/search_screen.dart';

class SearchBarrr extends StatelessWidget {

  const SearchBarrr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=> SearchBarScreen());
      },
      child: Container(
        padding: EdgeInsets.all(10),
        height: 50,
        width: MediaQuery.of(context).size.width - 32,
       decoration: BoxDecoration(
         color: Colors.grey.shade200,
         borderRadius: BorderRadius.circular(10)
         ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.search),
              Text("Search for topics, Courses",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
              Icon(Icons.menu),
            ],
          )
       ),
    );
  }
}