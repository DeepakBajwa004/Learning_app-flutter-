
import 'package:flutter/material.dart';
import 'package:learning_app/screens/profile/profile_screen.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(40),
                        height: 130,
                        width: 130,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Image.network(
                          'https://media.istockphoto.com/id/1327592506/vector/default-avatar-photo-placeholder-icon-grey-profile-picture-business-man.jpg?s=612x612&w=0&k=20&c=BpR0FVaEa5F24GIw7K8nMWiiGmbb8qmhfkpXcp1dhQg=',
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,),
                      ),

                    ),
                    Positioned(
                      top: 150,
                        right: 100,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey.shade700
                          ),
                            child: Icon(Icons.camera_alt_outlined,color: Colors.white,))
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text('Personal Info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              SizedBox(height: 15,),
              ListTile(
                leading: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     color: Colors.blue.shade50
                  ),
                  child: Icon(
                    Icons.perm_identity_sharp,size: 30, color: Colors.black87,),
                ),
                title: Text("Masoom Jaat"),
                trailing: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade50
                  ),
                  child: Icon(
                    Icons.edit,size: 25, color: Colors.black87,),
                ),
              ),
              SizedBox(height: 15,),
              ListTile(
                leading: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     color: Colors.blue.shade50
                  ),
                  child: Icon(
                    Icons.email_outlined,size: 30, color: Colors.black87,),
                ),
                title: Text("bajwadeepak98@gmail.com"),
                trailing: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade50
                  ),
                  child: Icon(
                    Icons.edit,size: 25, color: Colors.black87,),
                ),
              ),
              SizedBox(height: 15,),
              ListTile(
                leading: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     color: Colors.blue.shade50
                  ),
                  child: Icon(
                    Icons.phone,size: 30, color: Colors.black87,),
                ),
                title: Text("9992958933"),
                trailing: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade50
                  ),
                  child: Icon(
                    Icons.edit,size: 25, color: Colors.black87,),
                ),
              ),
              SizedBox(height: 15,),
              ListTile(
                leading: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     color: Colors.blue.shade50
                  ),
                  child: Icon(
                    Icons.lock_open,size: 30, color: Colors.black87,),
                ),
                title: Text("*************"),
                trailing: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade50
                  ),
                  child: Icon(
                    Icons.edit,size: 25, color: Colors.black87,),
                ),
              ),
              SizedBox(height: 20,),
              Text('Settings',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              SizedBox(height: 15,),
              ListTile(
                leading: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade50
                  ),
                  child: Icon(
                    Icons.pages,size: 30, color: Colors.black87,),
                ),
                title: Text("Pages"),
                trailing: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade50
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,size: 25, color: Colors.black87,),
                ),
              ),
              SizedBox(height: 15,),
              ListTile(
                leading: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade50
                  ),
                  child: Icon(
                    Icons.perm_identity_sharp,size: 30, color: Colors.black87,),
                ),
                title: Text("Masoom Jaat"),
                trailing: ToggleSwitch(),
              ),
              SizedBox(height: 15,),
              ListTile(
                leading: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade50
                  ),
                  child: Icon(
                    Icons.perm_identity_sharp,size: 30, color: Colors.black87,),
                ),
                title: Text("Masoom Jaat"),
                trailing: ToggleSwitch(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
