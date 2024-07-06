import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Checkout',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black),),
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  border: Border.all(color: Colors.deepPurple.shade100)
                ),
                child: ListTile(
                  leading:  ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfgv7iuM1Exo9z5llQKVSg4NBicDOQ6BoInQ&s',
                      height:60,width: 60,fit: BoxFit.cover,),
                  ),
                  title: Text('Andriod School',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  trailing: Text('\$100.00',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: 17),),
                )
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  border: Border.all(color: Colors.deepPurple.shade100)
                ),
                child: ListTile(
                  leading:  ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfgv7iuM1Exo9z5llQKVSg4NBicDOQ6BoInQ&s',
                      height:60,width: 60,fit: BoxFit.cover,),
                  ),
                  title: Text('Andriod School',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  trailing: Text('\$100.00',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: 17),),
                )
              ),
              SizedBox(height: 30,),
              Text('Payment Method',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width*.73,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        border: Border.all(color: Colors.white),
                      color: Colors.blue.shade50
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                          ),child: Icon(IconsaxPlusBroken.wallet,color: Colors.deepPurple,size: 30,),
                        ),
                        Text('VISA',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),),
                        Text('9300 **********',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54))
                      ],
                    ),
                  ),
                  Container(
                    height:65 ,
                    width: MediaQuery.of(context).size.width*.15,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.orange.shade50,
                    ),
                    child: Icon(Icons.delete_outline,color: Colors.orange,size: 30,),
                  )
                ],
              ),
              SizedBox(height: 20,),  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width*.73,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        border: Border.all(color: Colors.deepPurple),
                      color: Colors.blue.shade50
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),

                              color: Colors.deepPurple
                          ),child: Icon(IconsaxPlusBroken.wallet,color: Colors.white,size: 30,),
                        ),
                        Text('VISA',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),),
                        Text('9300 **********',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54))
                      ],
                    ),
                  ),
                  Container(
                    height:65 ,
                    width: MediaQuery.of(context).size.width*.15,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.orange.shade50,
                    ),
                    child: Icon(Icons.delete_outline,color: Colors.orange,size: 30,),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height*.20,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.blue.shade50,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Invoice',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Blance',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black54)),
                        Text('\$175.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black54)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Blance',style: TextStyle(fontSize: 18,color: Colors.black54)),
                        Text('\$00',style: TextStyle(fontSize: 18,color: Colors.black54)),
                      ],
                    ),
                    Divider(color: Colors.deepPurple.shade100,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                        Text('\$175.00',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),


              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(onPressed: (){},
                  child: Text('Buy Now',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
