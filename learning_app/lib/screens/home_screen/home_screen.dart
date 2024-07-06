

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/screens/home_screen/search_screen.dart';
import 'package:learning_app/screens/home_screen/silver_appbar/silver_search_app_bar.dart';
import 'package:learning_app/screens/home_screen/this_week_page/this_week_details.dart';

import '../../dummy_data/dummy_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          const SliverPersistentHeader(
            delegate: SliverSearchAppBar(),
            pinned: true,
          ),

          //This Week
          SliverList(
          delegate:
          SliverChildBuilderDelegate((BuildContext context, int index){
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("This week",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  TextButton(onPressed: (){},
                      child: Text("See all",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.orange),)
                  )
                ],
              ),
            );
    } ,childCount: 1),),
          SliverToBoxAdapter(
            child: Container(
              height: 260,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: DummyData.courses.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    clipBehavior: Clip.antiAlias,
                    margin: EdgeInsets.only(left:8,right: 8),
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                     // color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex:16,
                          child: GestureDetector(
                            onTap: (){
                              Get.to(()=>ThisWeekDetails(
                                imgUrl: DummyData.courses[index].imageUrl,
                                name: DummyData.courses[index].name,
                                duration: DummyData.courses[index].duration,));
                            },
                            child: Container(
                              // height: MediaQuery.of(context).size.height/4.6,
                              height: 200,
                              width: MediaQuery.of(context).size.width/1.4,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  // color: Colors.red
                              ),
                              child: Image.network(DummyData.courses[index].imageUrl,fit: BoxFit.cover,),
                            ),
                          ),
                        ),

                        Expanded(flex: 2,child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(DummyData.courses[index].name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                        )),
                        Expanded(flex: 3,child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(children: [Text(DummyData.courses[index].tutorName,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54),),SizedBox(width: 5,),Icon(Icons.person,size: 16,color: Colors.black54,)],),
                        )),
                        Expanded(flex: 3,child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,),
                          child: Text(DummyData.courses[index].price,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.deepPurple),),
                        )),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),

          //Category
          SliverList(
            delegate:
            SliverChildBuilderDelegate((BuildContext context, int index){
              return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                        TextButton(onPressed: (){},
                            child: Text("See all",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.orange),)
                        )
                      ],
                    ),
                  ],
                ),
              );
            } ,childCount: 1),),
          SliverToBoxAdapter(
            child:  Container(
               height: MediaQuery.of(context).size.height/4.5,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
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
          ),

          //Popular coures
          SliverList(
            delegate:
            SliverChildBuilderDelegate((BuildContext context, int index){
              return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Popular courses",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                        TextButton(onPressed: (){},
                            child: Text("See all",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.orange),)
                        )
                      ],
                    ),
                  ],
                ),
              );
            } ,childCount: 1),),
          SliverToBoxAdapter(
            child: Container(
              height: 85.0*DummyData.courses.length,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 10),
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height:10,);},
                  itemCount: DummyData.courses.length,
                  itemBuilder: (context ,index){
                return Container(
                 margin: EdgeInsets.only(left: 10,right: 10,),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                   leading: ClipRRect(
                     clipBehavior: Clip.antiAlias,
                     borderRadius: BorderRadius.circular(15),
                     child: Image.network(
                       DummyData.courses[index].imageUrl,
                       height:60,width: 70,fit: BoxFit.cover,),
                   ),
                   // title: Text("UI UX Curses"),
                    title: Text(DummyData.courses[index].name),
                    subtitle: Row(
                      children: [
                        Icon(Icons.watch_later_rounded,color: Colors.orange,size: 18,),
                        Text(DummyData.courses[index].duration,style: TextStyle(fontSize: 15,color: Colors.orange),),
                      ],
                    ),
                    trailing: Text(DummyData.courses[index].price,style: TextStyle(fontSize: 20,color: Colors.deepPurple),),
                  ),
                );
              }, ),
            )
          ),

        ],
      ),
    );
  }
}