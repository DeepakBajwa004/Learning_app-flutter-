import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              fillColor: Colors.blue.shade50.withOpacity(0.5),
                filled: true,
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300),borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300,),borderRadius: BorderRadius.circular(10))),
          ),
        ));
  }
}
