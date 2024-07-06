import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TutorProfilePage extends StatelessWidget {
  const TutorProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: constraints.maxHeight * .5, //70 for bottom
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      bottom: 100, // to shift little up
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration:  BoxDecoration(
                          color: Colors.deepPurple.shade400,
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(30),
                          ),
                        ),
                        width: constraints.maxWidth,
                        height: constraints.maxHeight * 0.2,
                      ),
                    ),
                    Positioned(
                      top: constraints.maxHeight * .1-1,
                      left: 20,
                      right: 20,
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: MediaQuery.of(context).size.height*.4,
                          width: MediaQuery.of(context).size.width - 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: ClipRRect(
                                    clipBehavior: Clip.antiAlias,
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      'https://media.istockphoto.com/id/1327592506/vector/default-avatar-photo-placeholder-icon-grey-profile-picture-business-man.jpg?s=612x612&w=0&k=20&c=BpR0FVaEa5F24GIw7K8nMWiiGmbb8qmhfkpXcp1dhQg=',
                                      height:60,width: 60,fit: BoxFit.cover,),
                                  ),
                                  // title: Text("UI UX Curses"),
                                  title: Text('Jane Cooper'),
                                  subtitle: Text('Associate Editor',style: TextStyle(fontSize: 15,color: Colors.black45),),
                                ),
                                SizedBox(height: 30,),
                                Container(
                                  height: 80 ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.deepPurple.shade50
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('21.1k',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.deepPurple),),
                                          Text('Followers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14 ,color: Colors.black45),),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('4.1k',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.deepPurple),),
                                          Text('Reviews',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14 ,color: Colors.black45),),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('90k',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.deepPurple),),
                                          Text('Total Students',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14 ,color: Colors.black45),),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 60,
                                      width: MediaQuery.of(context).size.width*.3+28,
                                      // width: MediaQuery.of(context).size.width-,
                                      child: ElevatedButton(onPressed: (){},
                                        child: Text('Chat'),style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              side: BorderSide(color: Colors.deepPurple),
                                          ),backgroundColor: Colors.white
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 60,
                                      width: MediaQuery.of(context).size.width*.3+28,
                                      child: ElevatedButton(onPressed: (){},
                                        child: Text('Follow'),style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            backgroundColor: Colors.deepPurple,
                                            foregroundColor: Colors.white
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("All courses",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
                        TextButton(onPressed: (){},
                            child: Text('See all',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.orange),)
                        ),
                      ],
                    ),
                    Container(
                      height: 30*9,
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        physics: NeverScrollableScrollPhysics(),
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(height:10,);},
                        itemCount: 3,
                        itemBuilder: (context ,index){
                          return Container(
                            //margin: EdgeInsets.only(left: 10,right: 10,),
                            decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: ClipRRect(
                                clipBehavior: Clip.antiAlias,
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfgv7iuM1Exo9z5llQKVSg4NBicDOQ6BoInQ&s',
                                  height:60,width: 70,fit: BoxFit.cover,),
                              ),
                              title: Text('UI UX Course'),
                              subtitle: Row(
                                children: [
                                  Icon(Icons.watch_later_rounded,color: Colors.orange,size: 18,),
                                  Text('30h 15min',style: TextStyle(fontSize: 15,color: Colors.orange),),
                                ],
                              ),
                              trailing: Text('\$75.00',style: TextStyle(fontSize: 20,color: Colors.deepPurple),),
                            ),
                          );
                        }, ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Student rating",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
                        TextButton(onPressed: (){},
                            child: Text('See all',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.orange),)
                        ),
                      ],
                    ),
                    Container(
                      height: 150,
                      child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 9,); },
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            clipBehavior: Clip.antiAlias,
                            //margin: EdgeInsets.only(left:8,right: 8),
                            padding: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              // color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 150,
                                  width: MediaQuery.of(context).size.width/3.5-1,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.deepPurple)
                                  ),
                                  child: CircularPercentIndicator(
                                    radius: 45.0,
                                    lineWidth: 4.0,
                                    percent: 0.60,
                                    center: new Text("60%"),
                                    footer: Text('Satisfied',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16),),
                                    progressColor: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Student Review",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
                        TextButton(onPressed: (){},
                            child: Text('See all',style: TextStyle(fontSize: 22,color: Colors.orange),)
                        ),
                      ],
                    ),
                    Container(
                      height: 300,
                     // height: MediaQuery.of(context).size.height,
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        physics: NeverScrollableScrollPhysics(),
                        separatorBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              SizedBox(height:20,),
                              Divider(),
                            ],
                          );},
                        itemCount: 3,
                        itemBuilder: (context ,index){
                          return Container(
                            height: 70,
                            child: ListTile(
                              leading: ClipRRect(
                                clipBehavior: Clip.antiAlias,
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfgv7iuM1Exo9z5llQKVSg4NBicDOQ6BoInQ&s',
                                  height:60,width: 70,fit: BoxFit.cover,),
                              ),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Masoom Jaat',style: TextStyle(fontSize: 18),),

                                  Text('2 days ago',style: TextStyle(fontSize: 13,color: Colors.black45),),

                                ],
                              ),
                              subtitle: Text('“I gained a lot of understanding about UX UI and also the importance of creating user centric apps through EDIT course. EDIT has a good reputation and I had a positive experience. I would recommend anyone who has interest in design to pursue this course.”',maxLines: 2,style: TextStyle(fontSize: 15,color: Colors.black54),),
                              //trailing: Text('2 days ago',style: TextStyle(fontSize: 10,color: Colors.black45),),
                            ),
                          );
                        }, ),
                    ),
                    SizedBox(height: 20,),

                    Text('Connect here',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          clipBehavior: Clip.antiAlias,
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            'https://store-images.s-microsoft.com/image/apps.60673.9007199266244427.4d45042b-d7a5-4a83-be66-97779553b24d.5d82b7eb-9734-4b51-b65d-a0383348ab1b?h=464',
                            height:60,width: 70,fit: BoxFit.cover,),
                        ),
                        Container(
                          height: 60,
                          width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent.shade400),
                          child: Icon(Icons.link,color: Colors.white,size: 30,),
                        ),
                        ClipRRect(
                          clipBehavior: Clip.antiAlias,
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRokEYt0yyh6uNDKL8uksVLlhZ35laKNQgZ9g&s',
                            height:60,width: 70,fit: BoxFit.cover,),
                        ),
                      ],
                    )

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
