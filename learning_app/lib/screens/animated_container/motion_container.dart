

import 'package:get/get.dart';
import 'package:motion/motion.dart';
import 'package:flutter/material.dart' hide Card;

import '../../controller/signup/signup_controller.dart';

class MotionDemoPage extends StatefulWidget {
  const MotionDemoPage({super.key});

  @override
  State<MotionDemoPage> createState() => _MotionDemoPageState();
}


const cardBorderRadius = BorderRadius.all(Radius.circular(25));
class _MotionDemoPageState extends State<MotionDemoPage> {
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(SignupController());

    return Motion.elevated(
      controller: MotionController(damping: defaultDampingFactor,maxAngle: defaultMaxAngle,),
                elevation: 50,
                borderRadius: cardBorderRadius,
                child:  Obx(
                      ()=> GestureDetector(
                    onTap: (){
                      controller.isTutor.value=true;
                      controller.isStudent.value=false;
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 2,
                      height: 80,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.purpleAccent.shade200,
                            Colors.purpleAccent.shade400,
                            Colors.purple.shade700,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('I am a',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16)),
                              Text(
                                'Tutor',
                                style:
                                TextStyle(color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                          controller.isTutor.value? Container(
                            height: 30,
                            width: 30,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Checkbox(
                              value: true,
                              onChanged: (value) {},
                              checkColor: Colors.green,
                              activeColor: Colors.white,
                            ),
                          ):SizedBox()
                        ],
                      ),
                    ),
                  ),
                )
              );
  }

}


class IAmStudentContainer extends StatefulWidget {
  const IAmStudentContainer({super.key});

  @override
  State<IAmStudentContainer> createState() => _IAmStudentContainerState();
}

class _IAmStudentContainerState extends State<IAmStudentContainer> {
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(SignupController());

    return Motion.elevated(
        controller: MotionController(damping: defaultDampingFactor,maxAngle: defaultMaxAngle,),

        elevation: 50,
                borderRadius: cardBorderRadius,
                child:  Obx(
                      ()=> GestureDetector(
                    onTap: (){
                      controller.isStudent.value=true;
                      controller.isTutor.value=false;
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 2,
                      height: 80,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.purple.shade700,
                            Colors.purpleAccent.shade400,
                            Colors.purpleAccent.shade200,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('I am a',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16)),
                              Text(
                                'Student',
                                style:
                                TextStyle(color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                          controller.isStudent.value? Container(
                            height: 30,
                            width: 30,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Checkbox(
                              value: true,
                              onChanged: (value) {},
                              checkColor: Colors.green,
                              activeColor: Colors.white,
                            ),
                          ):SizedBox()
                        ],
                      ),
                    ),
                  ),
                )
              );
  }

}