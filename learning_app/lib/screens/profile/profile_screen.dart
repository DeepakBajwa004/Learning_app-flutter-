

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/screens/profile/personal_info.dart';
import 'package:learning_app/screens/profile/statistics_screen.dart';
import 'package:learning_app/screens/profile/transation_history.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) =>
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: constraints.maxHeight * .4 + 20, //70 for bottom
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          bottom: 100,
                          // to shift little up
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.deepPurple.shade400,
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(25),
                              ),
                            ),
                            width: constraints.maxWidth,
                            height: constraints.maxHeight * 0.2,
                          ),
                        ),
                        Positioned(
                            top: constraints.maxHeight * .1 - 30,
                            left: 30,
                            child: Text('Profile', style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            ),
                        ),
                        Positioned(
                            top: constraints.maxHeight * .1 - 40,
                            right: 30,
                            child: ToggleSwitch()
                        ),
                        Positioned(
                          top: constraints.maxHeight * .1 + 20,
                          left: 20,
                          right: 20,
                          child: Material(
                            elevation: 3,
                            color: Colors.grey.shade50,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * .3 - 20,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width - 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20),
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: ClipRRect(
                                        clipBehavior: Clip.antiAlias,
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.network(
                                          'https://media.istockphoto.com/id/1327592506/vector/default-avatar-photo-placeholder-icon-grey-profile-picture-business-man.jpg?s=612x612&w=0&k=20&c=BpR0FVaEa5F24GIw7K8nMWiiGmbb8qmhfkpXcp1dhQg=',
                                          height: 60,
                                          width: 60,
                                          fit: BoxFit.cover,),
                                      ),
                                      // title: Text("UI UX Curses"),
                                      title: Text('Jane Cooper', style: TextStyle(fontSize: 20,
                                          color: Colors.black),),
                                      subtitle: Text('Associate Editor',
                                        style: TextStyle(fontSize: 20,
                                            color: Colors.black45),
                                      ),
                                      trailing: Icon(Icons.edit,color: Colors.deepPurple,size: 30,),
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Container(
                                          height: MediaQuery
                                              .of(context)
                                              .size
                                              .height * .1 + 10,
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width * .3 + 35,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(10),
                                              gradient: LinearGradient(
                                                  colors: [
                                                    Colors.purpleAccent
                                                        .shade200,
                                                    Colors.purpleAccent
                                                        .shade400,
                                                    Colors.purple.shade700,
                                                  ]
                                              )
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Text('7', style: TextStyle(
                                                  fontSize: 27,
                                                  color: Colors.white),),
                                              Text('Enrolled', style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white),)

                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery
                                              .of(context)
                                              .size
                                              .height * .1 + 10,
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width * .3 + 35,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(10),
                                              gradient: LinearGradient(
                                                  colors: [
                                                    Colors.blue.shade900,
                                                    Colors.blue.shade400,
                                                    Colors.blue.shade200,
                                                  ]
                                              )
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Text('2', style: TextStyle(
                                                  fontSize: 27,
                                                  color: Colors.white),),
                                              Text('Certificates',
                                                style: TextStyle(fontSize: 20,
                                                    color: Colors.white),)

                                            ],
                                          ),
                                        ),

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
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: (){
                      Get.to(()=>PersonalInfo());
                    },

                    child: ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.deepPurple)
                        ),
                        child: Icon(
                          Icons.perm_identity_sharp, color: Colors.deepPurple,),
                      ),
                      title: Text("Personal Information"),
                      trailing: Icon(
                        Icons.arrow_forward_ios, color: Colors.deepPurple,),
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      Get.to(()=>MyHomePage());
                    },
                    child: ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.deepPurple)
                        ),
                        child: Icon(Icons.history, color: Colors.deepPurple,),
                      ),
                      title: Text("Transation History"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      Get.to(()=>StatisticsScreen());
                    },
                    child: ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.deepPurple)
                        ),
                        child: Icon(Icons.bar_chart, color: Colors.deepPurple,),
                      ),
                      title: Text("Statistics"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/5.5,
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.defaultDialog(
                          title: 'Logout',
                          titleStyle: TextStyle(color: Colors.red),
                          textConfirm: 'Yes',
                          content: Text('Do you want to logout your account'),
                          textCancel: "No",
                      );
                    },
                    child: ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.deepPurple)
                        ),
                        child: Icon(Icons.login, color: Colors.deepPurple,),
                      ),
                      title: Text("Logout"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
      ),
    );
  }
}

class ToggleSwitch extends StatefulWidget {
  const ToggleSwitch({super.key});

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {

  bool isSwitched = false;

  void _toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isSwitched,
      onChanged: _toggleSwitch,
      activeTrackColor: Colors.deepPurple.shade50,
      activeColor: Colors.deepPurple,
    );
  }
}