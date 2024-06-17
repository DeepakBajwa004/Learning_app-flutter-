import 'package:get/get.dart';

class CategoryController extends GetxController{
   RxList<bool> isSelectedItems=<bool>[].obs;
   RxInt selectedItemCount=0.obs;
   initialize(int itemCount){
     isSelectedItems.value=List<bool>.generate(itemCount, (index)=>false);
   }
   toggle(int index){
      selectedItemCount=(isSelectedItems[index]==true?selectedItemCount--:selectedItemCount++);
     isSelectedItems[index]=!isSelectedItems[index];
   }

}