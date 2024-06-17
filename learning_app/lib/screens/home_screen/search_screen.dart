

import 'package:flutter/material.dart';

class SearchBarScreen extends StatelessWidget {
   SearchBarScreen({super.key});

   final List<String> imgUrl =[
     'assets/riv/web_design.jpg'
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //searcch
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Search for topics, Courses",
                  suffixIcon: Icon(Icons.menu),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Text("Top search",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 20,),

              //Top search
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/19,
                    width: MediaQuery.of(context).size.width/5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade200,
                    ),
                    child: Center(child: Text("Sketch")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: MediaQuery.of(context).size.height/19,
                    width: MediaQuery.of(context).size.width/5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade200,
                    ),
                    child: Center(child: Text("Modeling")),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: MediaQuery.of(context).size.height/19,
                    width: MediaQuery.of(context).size.width/5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade200,
                    ),
                    child: Center(child: Text("UI/UX")),
                  ),
                ],
              ),
              SizedBox(height: 20,),

              //Categories
              Text("Categories",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 20,),

              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 1,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(imgUrl.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/riv/web_design.jpg")),
                        borderRadius:
                        BorderRadius.all(Radius.circular(5.0),),
                      ),
                    ),
                  );
                }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
