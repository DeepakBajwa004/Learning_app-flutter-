import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyHomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<_SalesData> data = [
    _SalesData('1D', 35),
    _SalesData('5D', 28),
    _SalesData('1M', 34),
    _SalesData('3M', 32),
    _SalesData('6M', 40)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
            appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Transation history',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
              children: [
            //Initialize the chart widget
            Container(
              height: MediaQuery.of(context).size.height/4+20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Colors.lightBlue,
                    Colors.lightBlueAccent,
                    Colors.lightBlue,
                  ]
                )
              ),
              child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  // Chart title
                  //title: ChartTitle(text: 'Half yearly sales analysis'),
                  // Enable legend
                  //legend: Legend(isVisible: true),
                  // Enable tooltip
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <CartesianSeries<_SalesData, String>>[
                    LineSeries<_SalesData, String>(
                      color: Colors.white,
                        dataSource: data,
                        xValueMapper: (_SalesData sales, _) => sales.year,
                        yValueMapper: (_SalesData sales, _) => sales.sales,
                        name: 'Purchased',
                        // Enable data label
                        dataLabelSettings: DataLabelSettings(isVisible: true)
                    )
                  ]),
            ),

                SizedBox(height: 30,),
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
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUqrsN_r2I59b_vQetWfDZ0mObDPKsmhHjJA&s',
                          height:60,width: 60,fit: BoxFit.cover,),
                      ),
                      title: Text('Andriod School',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                      trailing: Text('\$100.00',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: 17),),
                    )
                ),
                SizedBox(height: 30,),
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
                          'https://gitu.net/gituimg/free-psd-mockups-download/Free-Long-Stroll-App-Screen-Mobile-Mockup-PSD-Set-1.jpg',
                          height:60,width: 60,fit: BoxFit.cover,),
                      ),
                      title: Text('Mobile responsive',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                      trailing: Text('\$75.00',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: 17),),
                    )
                ),
          ]),
        ));
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}