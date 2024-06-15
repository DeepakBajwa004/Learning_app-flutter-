import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title:   Text(
          'Welcone back',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Login to your account',
                style: TextStyle(fontSize: 16,color: Colors.grey),
              ),
              Form(
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Johny Sins',
                        labelText: 'Enter you name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Johny Sins',
                        labelText: 'Enter you name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),

                    SizedBox(height: 80,),

                  ],
                ),),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.lightBlueAccent.shade100,
                        Colors.lightBlueAccent.shade400,
                        Colors.lightBlueAccent.shade700,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: const Text('Sign in')),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/3.2,),
              Text('If you have not any account'),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  Get.to(()=>LoginScreen());
                },
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade50,
                        Colors.blue.shade300,
                        Colors.blue.shade50,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                      child: Text(
                        'Sign up',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
