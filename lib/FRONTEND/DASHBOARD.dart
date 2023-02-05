import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'REVIEWS.dart';



class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {


  List names = ["200", "5,00,000", "300", "99"];
  List title = ["Total Menus", "Total Revenue", "Total Orders", "Total Users"];
  List icons = [
    Icons.restaurant,
    Icons.attach_money_outlined,
    Icons.menu_book,
    Icons.person
  ];
  List<Map<dynamic, dynamic>> selling_items = [
    {"Food Name": "Briyani", "Percentage": 90},
    {"Food Name": "Shawarma", "Percentage": 80},
    {"Food Name": "Chicken Gravy", "Percentage": 50},
    {"Food Name": "Dosa", "Percentage": 60},
  ];
  List<ChartData> chartData = [
    ChartData('Monday', 25, Color(0xffF8EA8C)),
    ChartData('Tuesday', 38, Color(0xffA4E8E0)),
    ChartData('Wednesday', 34, Color(0xffFAE8E0)),
    ChartData('Thursday', 52, Color(0xffB6E2D3)),
    ChartData('Friday', 38, Color(0xffD8A7B1)),
    ChartData('Saturday', 34, Color(0xffFBE5C8)),
    ChartData('Sunday', 52, Color(0xff98D7C2)),
  ];
  List<SalesData> salesData = [
    SalesData(DateTime(DateTime.january), 35),
    SalesData(DateTime(DateTime.february), 28),
    SalesData(DateTime(DateTime.march), 34),
    SalesData(DateTime(DateTime.april), 32),
    SalesData(DateTime(DateTime.may), 15),
    SalesData(DateTime(DateTime.june), 30),
    SalesData(DateTime(DateTime.july), 17),
    SalesData(DateTime(DateTime.august), 47),
    SalesData(DateTime(DateTime.september), 29),
    SalesData(DateTime(DateTime.october), 31),
    SalesData(DateTime(DateTime.november), 48),
    SalesData(DateTime(DateTime.december), 46),
  ];
  List<Map<dynamic, dynamic>> review = [
    {
      "Reviewer Name": "Venkat Raman",
      "Review":
      "It’s a great experience. The ambiance is very welcoming and charming.",
      "Image": "assets/quotes.png"
    },
    {
      "Reviewer Name": "Srihari",
      "Review":
      "This place is great! Atmosphere is chill and cool but the staff is also really friendly.",
      "Image": "assets/quotes.png"
    },
    {
      "Reviewer Name": "Visruthi",
      "Review":
      " Excellent food. Menu is extensive and seasonal to a particularly high standard. Definitely fine dining. ",
      "Image": "assets/quotes.png"
    },
    {
      "Reviewer Name": "Anitha",
      "Review":
      "We are so fortunate to have this place just a few minutes drive away from home.",
      "Image": "assets/quotes.png"
    },
    {
      "Reviewer Name": "Nandha Kumar",
      "Review":
      "Delicious food, waiters are very attentive, and super nice atmosphere. Plus it’s all at an affordable price.",
      "Image": "assets/quotes.png"
    },
    {
      "Reviewer Name": "Venkat S P",
      "Review":
      "Excellent, unassuming and wonderful find. Great variety and fine value tasting menu.",
      "Image": "assets/quotes.png"
    },
  ];


  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    return Container(
      width: width * 0.82,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Dashboard",
                  style: GoogleFonts.robotoCondensed(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30)
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.02,
                ),
                Container(
                  height: height * 0.15,
                  width: width * 0.75,
                  alignment: Alignment.center,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: names.length,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 250,
                        childAspectRatio: height * 0.5 / width * 1.7,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        names[index],
                                        style: GoogleFonts.robotoCondensed(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        title[index],
                                        style: GoogleFonts.robotoCondensed(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14)
                                      ),
                                    ),
                                  ],
                                ),
                                CircularPercentIndicator(
                                  arcType: ArcType.FULL,
                                  arcBackgroundColor: Colors.yellow[100],
                                  progressColor: const Color(0xffF0C808),
                                  radius: 32.0,
                                  lineWidth: 10.0,
                                  percent: 0.8,
                                  center: Icon(
                                    icons[index],
                                    size: 30.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      height: height * 0.5,
                      width: width * 0.37,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                       Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Most Selling Items",
                              style: GoogleFonts.robotoCondensed(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)
                            ),
                          ),
                          Container(
                            height: height * 0.4,
                            width: width * 0.37,
                            child: ListView.builder(
                              itemCount: selling_items.length,
                              itemBuilder:
                                  (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    borderRadius: BorderRadius.circular(10),
                                    elevation: 20,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        // color: const Color(0xffF0C808),
                                      ),
                                      alignment: Alignment.centerLeft,
                                      height: 66,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Text(
                                              selling_items[index]
                                              ['Food Name'],
                                              style: GoogleFonts.robotoCondensed(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)
                                            ),
                                            CircularPercentIndicator(
                                              progressColor: const Color(0xffF0C808),
                                              radius: 25.0,
                                              lineWidth: 8.0,
                                              percent: 0.8,
                                              center: Text(
                                                "${selling_items[index]['Percentage'].toString()}%",
                                                style: GoogleFonts.robotoCondensed(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:  Colors.white,
                      ),
                      height: height * 0.5,
                      width: width * 0.37,
                      child: SfCircularChart(
                        title: ChartTitle(
                          text: 'Day-wise Revenue',
                          textStyle: GoogleFonts.robotoCondensed(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)
                        ),
                        legend: Legend(isVisible: true, textStyle: GoogleFonts.robotoCondensed(color: Colors.black, fontSize: 14)),
                        series: <CircularSeries>[
                          // Render pie chart
                          PieSeries<ChartData, String>(
                            opacity: 1.0,
                              dataSource: chartData,
                              pointColorMapper: (ChartData data, _) =>
                              data.color,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) =>
                              data.y),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Material(
                    elevation: 20,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: height * 0.4,
                            width: width * 0.34,
                            color: Colors.white,
                            child: SfCartesianChart(
                              palette: const [Color(0xffF0C808)],
                              backgroundColor: Colors.white,
                              title: ChartTitle(
                                text: "Monthly Revenue Chart",
                                textStyle: GoogleFonts.robotoCondensed(color: Colors.black, fontWeight: FontWeight.bold)
                              ),
                              borderColor: const Color(0xffF0C808),
                              primaryXAxis: DateTimeAxis(),
                              series: <ChartSeries>[
                                // Renders line chart
                                LineSeries<SalesData, DateTime>(
                                    dataSource: salesData,
                                    xValueMapper: (SalesData sales, _) =>
                                    sales.month,
                                    yValueMapper: (SalesData sales, _) =>
                                    sales.sales),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      height: height * 0.4,
                      width: width * 0.37,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Reviews",
                              style: GoogleFonts.robotoCondensed(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            height: height * 0.32,
                            width: width * 0.41,
                            child: ListView.builder(
                              itemCount: review.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    elevation: 20,
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                      ),
                                      height: 68,
                                      width: 20,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 16,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.difference),
                                                  image: AssetImage(
                                                    review[index]['Image'],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              review[index]['Reviewer Name'],
                                              style: const TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black
                                              ),
                                            ),
                                            Text(
                                              "${review[index]['Review'].toString().substring(0,60)}....",
                                              style: const TextStyle(
                                                fontSize: 10,
                                                  color: Colors.black
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.month, this.sales);
  final DateTime month;
  final double sales;
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
