import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning_app/controller/signup/signup_controller.dart';
import 'package:learning_app/screens/animated_container/motion_container.dart';
import 'package:learning_app/screens/login/login_screen.dart';
import 'package:motion/motion.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(SignupController());
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Create new account',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Create a new account if you don't have",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: IAmStudentContainer()),
                    SizedBox(width: 10,),
                  Expanded(child: MotionDemoPage())
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controller.name,
                        decoration: InputDecoration(
                          hintText: 'Ex- Johny Sins',
                          labelText: 'Enter you name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: controller.email,
                        validator: (value){
                        return  controller.emailValidator(value);
                        },
                        decoration: InputDecoration(
                          hintText: 'Ex- JohnySins@gmail.com',
                          labelText: 'Enter you email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove_red_eye),
                          ),
                          hintText: 'Ex- JohnySins@12345',
                          labelText: 'Enter you password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    if(controller.formKey.currentState!.validate()){
                      Get.to(LoginScreen());
                    }
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
                          Colors.blue.shade400,
                          Colors.blue.shade800,
                          Colors.blue.shade900,
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
                SizedBox(height: MediaQuery.of(context).size.height/7.9,),

                const Text('Already have an account'),
                SizedBox(
                  height: 30,
                ),
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
                          'Sign in',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }}

