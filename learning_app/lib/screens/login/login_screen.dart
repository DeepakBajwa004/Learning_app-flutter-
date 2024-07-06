import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/controller/login/login_controller.dart';
import 'package:learning_app/controller/signup/signup_controller.dart';
import 'package:learning_app/screens/category/category_screen.dart';
import 'package:rive/rive.dart';

import '../bottom_nav_bar/bottom_nav_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});



  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  SMIInput<bool>? isChecking;
  SMIInput<bool>? isHandsUp;
  SMIInput<bool>? trigSuccess;
  SMIInput<bool>? trigFail;
  SMINumber? numLook;

  late StateMachineController? stateMachineController;
  void isCheckField() {
    isHandsUp?.change(false);
    isChecking?.change(true);
    numLook?.change(0);
  }

  void moveEyeBall(val) {
    numLook?.change(val.length.toDouble());
  }

  void hidePassword() {
    isHandsUp?.change(true);
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final loginController =Get.put(SignupController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD6E2EA),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title:   Text(
          'Welcome back',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      backgroundColor: Color(0xFFD6E2EA),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
                  'Login to your account',
                  style: TextStyle(fontSize: 16,color: Colors.grey),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/3.1,
                  child: RiveAnimation.asset(
                    "assets/riv/animated_login_character_.riv",
                    stateMachines: const ["Login Machine"],
                    onInit: (artBoard) {
                      stateMachineController = StateMachineController.fromArtboard(
                          artBoard,
                          "Login Machine" // it must me same from rive name
                      );
                      if (stateMachineController == null) return;
                      artBoard.addController(stateMachineController!);
                      isChecking = stateMachineController?.findInput("isChecking");
                      isHandsUp = stateMachineController?.findInput("isHandsUp");
                      trigSuccess =
                          stateMachineController?.findInput("trigSuccess");
                      trigFail = stateMachineController?.findInput("trigFail");
                      numLook = stateMachineController?.findSMI("numLook");
                    },
                  ),
                ),

                SizedBox(height: 30,),
                Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          onChanged: moveEyeBall,
                          onTap: isCheckField,
                          controller: controller.email,
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            hintText: 'Ex- JohnySins@gmail.com',
                            labelText: 'Enter you email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          validator: (value)=> loginController.emailValidator(value)
                        ),
                        // eye is moving
                        const SizedBox(height: 20),

                        TextFormField(
                          controller: controller.password,
                          onTap: hidePassword,
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.remove_red_eye),
                            ),
                            hintText: 'Ex- JohnySins@12345',
                            labelText: 'Enter you password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                            validator: (value) =>loginController.passwordValidator(value)

                        ),

                        const SizedBox(height: 25),

                      ],
                    )
                ),

                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:
                      Colors.blue[200]
                  ),
                  child: InkWell(
                    onTap: () {
                      if (controller.formKey.currentState!.validate()) {
                        isChecking!.change(false);
                        isHandsUp!.change(false);
                        trigFail!.change(false);
                        trigSuccess!.change(true); // for success
                        isChecking!.change(false);
                      } else{
                        isChecking!.change(false);
                        isHandsUp!.change(false);
                        trigFail!.change(true);// for unsuccess
                        trigSuccess!.change(false);
                        isChecking!.change(false);
                      }

                      controller.signInWithEmailAndPassword();

                    },
                    child: const Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white,fontSize: 18),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height/13.5),
                Text('If you have not any account'),
                SizedBox(height: 20,),
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
                      color: Colors.blue,
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
      ),
    );
  }
}



