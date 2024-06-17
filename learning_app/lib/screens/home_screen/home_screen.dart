

import 'package:flutter/material.dart';
import 'package:learning_app/screens/home_screen/search_screen.dart';
import 'package:learning_app/screens/home_screen/silver_appbar/silver_search_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverPersistentHeader(
            delegate: SliverSearchAppBar(),
            pinned: true,
          ),

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
                      child: Text("See all",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue),)
                  )
                ],
              ),
            );
    } ,childCount: 1),),

          SliverToBoxAdapter(
            child: Container(

              // height: MediaQuery.of(context).size.height / 2,
              height: 240,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    clipBehavior: Clip.antiAlias,
                    margin: EdgeInsets.only(left:8,right: 8),
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex:16,
                          child: Container(
                            // height: MediaQuery.of(context).size.height/4.6,
                            height: 200,
                            width: MediaQuery.of(context).size.width/1.4,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red
                            ),
                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzXYcl1y3YeDofnUK0TPzbzZV9XX5_6hZK3g&s",fit: BoxFit.cover,),
                          ),
                        ),
                        Expanded(flex: 2,child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Web Development",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                        )),
                        Expanded(flex: 2,child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(children: [Text("Jane cooper"),SizedBox(width: 5,),Icon(Icons.person,size: 16,)],),
                        )),
                        Expanded(flex: 2,child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,),
                          child: Text("\$ 75",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue.shade700),),
                        ))
                      ],
                    ),
                  );
                },
              ),
            ),
          ),

        ],
      ),
    );
  }
}
//  SliverList(
//      delegate:
//      SliverChildBuilderDelegate((BuildContext context, int index) {
//        return Column(
//          children: [
//            Padding(
//              padding: const EdgeInsets.symmetric(horizontal: 8.0),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: [
//                  Text("This Week",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
//                  TextButton(onPressed: (){},
//                      child: Text("See all",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.orangeAccent,fontSize: 18),)
//                  ),
//                ],
//              ),
//            ),
//
//            // Column(
//            //   children: [
//            //     Expanded(
//            //       child: Container(
//            //         height: 300,
//                    child: ListView.builder(
//                      scrollDirection: Axis.horizontal,
//                      itemCount: 2,
//                      itemBuilder: (BuildContext context, int index) {
//                        return Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Container(
//                              height: MediaQuery.of(context).size.height/4.6,
//                              width: MediaQuery.of(context).size.width/1.4,
//                              clipBehavior: Clip.antiAlias,
//                              decoration: BoxDecoration(
//                                  borderRadius: BorderRadius.circular(20),
//                                  color: Colors.red
//                              ),
//                              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzXYcl1y3YeDofnUK0TPzbzZV9XX5_6hZK3g&s",fit: BoxFit.cover,),
//                            ),
//                            Text("Web Development",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
//                            Row(children: [Icon(Icons.person,color: Colors.orange,size: 20,),Text("Jane cooper")],),
//                            Text("Rs.75",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue.shade700),)
//                          ],
//                        );
//                      },
//                    ),
//                  ),
//                ),
//            //     Text("hrhf")
//            //   ],
//            // ),
//          ],
//        );
//      },
//    childCount:1  )
// )