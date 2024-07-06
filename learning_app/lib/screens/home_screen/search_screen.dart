

import 'package:flutter/material.dart';

import '../../dummy_data/dummy_data.dart';

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

              Container(
                height: MediaQuery.of(context).size.height-320,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 20),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 1,
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            )),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 6,
                              child: Container(
                                width: double.maxFinite,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image(
                                  fit: BoxFit.fitWidth,
                                  image: AssetImage(DummyData
                                      .categories[index].imageUrl),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  DummyData.categories[index].name,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )),
                          ],
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
    );
  }
}
