import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/controller/category/category_controller.dart';
import 'package:learning_app/dummy_data/dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    controller.initialize(DummyData.categories.length);
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'Choose Categories',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 20),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Obx(
                        () => GestureDetector(
                          onTap: () => controller.toggle(index),
                          child: Stack(children: [
                            Container(
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
                            Positioned(
                              right: 5,
                              top: 5,
                              child: controller.isSelectedItems[index]
                                  ? Container(
                                      height: 30,
                                      width: 30,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                          color: Colors.blueAccent,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Checkbox(
                                        value: true,
                                        onChanged: (value) {},
                                        checkColor: Colors.white,
                                        activeColor: Colors.blueAccent,
                                      ),
                                    )
                                  : const SizedBox.shrink(),
                            )
                          ]),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
        floatingActionButton: Obx(
          () => SizedBox(
            child: controller.selectedItemCount.value > 0
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Container(
                              padding: const EdgeInsets.only(left: 30),
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    backgroundColor: Colors.blueAccent,
                                    foregroundColor: Colors.white),
                                child:  const Text(
                                  'Continue',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ))),
                      const SizedBox(
                        width: 10,
                      ),
                      Obx(() => SizedBox(
                            height: 50,
                            child: FloatingActionButton(
                              onPressed: null,
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blueAccent,
                              tooltip: 'Category Selected',
                              child: Text(
                                controller.selectedItemCount.value.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ))
                    ],
                  )
                : const SizedBox.shrink(),
          ),
        ));
  }
}
