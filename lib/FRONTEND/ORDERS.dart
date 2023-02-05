import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List<Map<dynamic, dynamic>> table = [
    {
      "S.No": 1,
      "Order No": 2,
      "Name": "Venkat",
      "Phone No": 9443365495,
      "Total Price": "1000",
      "Mode of Payment": "Cash on Delivery"
    },
    {
      "S.No": 2,
      "Order No": 3,
      "Name": "Sri",
      "Phone No": 9080921951,
      "Total Price": "5000",
      "Mode of Payment": "Cash on Delivery"
    },
    {
      "S.No": 3,
      "Order No": 4,
      "Name": "Visu",
      "Phone No": 7010144224,
      "Total Price": "120",
      "Mode of Payment": "UPI"
    },
    {
      "S.No": 4,
      "Order No": 5,
      "Name": "Visu",
      "Phone No": 9443365495,
      "Total Price": "1000",
      "Mode of Payment": "Cash on Delivery"
    },
    {
      "S.No": 5,
      "Order No": 6,
      "Name": "Venkat",
      "Phone No": 9443365495,
      "Total Price": "1000",
      "Mode of Payment": "Cash on Delivery"
    },
  ];

  List<Map<dynamic, dynamic>> menu = [
    {
      "Food item": "Briyani",
      "Quantity": 2,
      "Price": "120",
      "Total Price": "240"
    },
    {"Food item": "Dosa", "Quantity": 4, "Price": "40", "Total Price": "160"},
    {
      "Food item": "Shawarma",
      "Quantity": 1,
      "Price": "110",
      "Total Price": "110"
    },
  ];

  List<Map<dynamic, dynamic>> selec = [];
  String _orderno = "";
  String _ph = "";
  String _name = "";
  int selected =0;
  List<int> _list = [];

  @override
  void initState() {
    // TODO: implement initState
     _list = List.generate(table.length, (i) => 0);
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    // var height = size.height;
    return SizedBox(
      height: height * 1,
      child: Column(
        children: [
          Container(
            width: width * 1,
            height: height*0.1,
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Orders",
                  style: GoogleFonts.robotoCondensed(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
            ),
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white70,
                    ),
                    height: height * 0.9,
                    width: width * 0.30,
                    child: Column(
                      children: [
                        DefaultTabController(
                          length: 3,
                          child: TabBar(
                            indicator: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(12)
                            ),
                            tabs: [
                              Tab(
                                child: Text("Pending",
                                  style: GoogleFonts.robotoCondensed(
                                      color: Colors.black,
                                      fontSize: 16)),),
                              Tab(child: Text("Progress",
                                  style: GoogleFonts.robotoCondensed(
                                      color: Colors.black,
                                      fontSize: 16)),),
                              Tab(child: Text("Completed",
                                  style: GoogleFonts.robotoCondensed(
                                      color: Colors.black,
                                      fontSize: 16)),)
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TabBarView(
                            children: [

                        ])
                      ],
                    )
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 20,
                  child: Container(
                      height: height * 0.9,
                      width: width * 0.48,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child:Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Order Summary",
                                  style: GoogleFonts
                                      .robotoCondensed(
                                      color: Colors.black,
                                      fontWeight:
                                      FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ),
                            ),
                            Container(
                              height: height * 0.5,
                              width: width * 0.45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                border: Border.all(width: 0.5, color: Colors.grey)
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Order #$_orderno',style: GoogleFonts
                                                    .robotoCondensed(
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.bold,
                                                    fontSize: 20),),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  DateTime.now().toString(),style: GoogleFonts
                                                    .robotoCondensed(
                                                    color: Colors.grey,
                                                    fontSize: 16),),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  _name,style: GoogleFonts
                                                    .robotoCondensed(
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.bold,
                                                    fontSize: 20),),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  _ph,style: GoogleFonts
                                                    .robotoCondensed(
                                                    color: Colors.grey,
                                                    fontSize: 16),),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    color: Colors.grey,
                                    width: double.infinity,
                                    height: 0.5,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 240,
                                    width: width * 0.7,
                                    child: ListView.builder(
                                      itemCount: selec.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Column(
                                          children: [
                                            ListTile(
                                              title: Text(
                                                selec[index]['Food item'],style: GoogleFonts
                                                  .robotoCondensed(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),),
                                              subtitle: Text(
                                                'x${selec[index]['Quantity']}',style: GoogleFonts
                                                  .robotoCondensed(
                                                  color: Colors.grey,
                                                  fontSize: 14),),
                                              trailing: SizedBox(
                                                width: width*0.04,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      '+',style: GoogleFonts
                                                        .robotoCondensed(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 16),),
                                                    Text(
                                                      '₹',style: GoogleFonts
                                                        .robotoCondensed(
                                                        color: const Color(
                                                            0xffF0C808),
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 16),),
                                                    Text(
                                                      selec[index]['Price'],style: GoogleFonts
                                                        .robotoCondensed(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 16),),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: Colors.grey,
                                              height: 0.5,
                                              width: double.infinity,
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                  Container(
                                    color: Colors.grey,
                                    height: 0.5,
                                    width: double.infinity,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Total",
                                            style: GoogleFonts
                                                .robotoCondensed(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width*0.04,
                                          child: Row(
                                            children: [
                                              Text(
                                                '+',style: GoogleFonts
                                                  .robotoCondensed(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),),
                                              Text(
                                                '₹',style: GoogleFonts
                                                  .robotoCondensed(
                                                  color: const Color(
                                                      0xffF0C808),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),),
                                              Text(
                                                '500',style: GoogleFonts
                                                  .robotoCondensed(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () async {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 40,
                                    width: 140,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(40.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(
                                            5.0,
                                            5.0,
                                          ),
                                          blurRadius: 10.0,
                                          spreadRadius: 2.0,
                                        ),
                                      ],
                                    ),
                                    child: const Text(
                                      "Accept Order",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    final ConfirmAction? action =
                                        await _asyncConfirmDialog(context);
                                    print("Confirm Action $action");
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 40,
                                    width: 140,
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(40.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(
                                            5.0,
                                            5.0,
                                          ),
                                          blurRadius: 10.0,
                                          spreadRadius: 2.0,
                                        ),
                                      ],
                                    ),
                                    child: const Text(
                                      "Delete Order",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
              ]),
        ],
      ),
    );
  }
}

enum ConfirmAction { Cancel, Confirm }

Future<ConfirmAction?> _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Delete This Order?'),
        content: const Text('This will delete the order permanently.'),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.Cancel);
            },
          ),
          TextButton(
            child: const Text('Confirm'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.Confirm);
            },
          )
        ],
      );
    },
  );
}
