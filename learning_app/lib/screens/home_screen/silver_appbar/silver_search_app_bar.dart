import 'package:flutter/material.dart';
import 'package:learning_app/screens/home_screen/silver_appbar/search_bar.dart';

import 'backgruond_wave.dart';

class SliverSearchAppBar extends SliverPersistentHeaderDelegate {
  const SliverSearchAppBar();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var adjustedShrinkOffset =
        shrinkOffset > minExtent ? minExtent : shrinkOffset;
    double offset = (minExtent - adjustedShrinkOffset) * 0.5;
    double topPadding = MediaQuery.of(context).padding.top + 37;
    double offsett = (maxExtent - adjustedShrinkOffset)*0.2;
    double topPaddingg = MediaQuery.of(context).padding.top -40;

    return Stack(
        fit: StackFit.passthrough,
        children: [
      Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(137)),
          gradient: LinearGradient(
              colors: [
                Colors.blue.shade100,
                Colors.blue.shade400,
                Colors.blue.shade700,

              ]
          )
      ),
      height: 280,),
          const BackgroundWave(
            height: 280,
          ),
          Positioned(
              top: offsett+topPaddingg,
              left: 16,right: 10,
              child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi Masoom,",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
                      Text("Let's Start Learning",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),)
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.blue[400],
                          ),
                          child: Icon(Icons.shopping_cart_outlined)
                      ),
                      SizedBox(width: 14,),
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.blue[400],
                          ),
                          child: Icon(Icons.notification_add)
                      ),
                    ],
                  ),
                ],
              ),
          ),
          Positioned(
            top: topPadding + offset,
            child:  SearchBarrr(),
            left: 16,
            right: 16,
          )
        ],
    );
  }

  @override
  double get maxExtent => 280;

  @override
  double get minExtent => 140;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}
