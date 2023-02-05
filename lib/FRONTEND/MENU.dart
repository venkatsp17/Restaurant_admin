import 'package:admin/add_menu.dart';
import 'package:admin/menu_list.dart';
import 'package:admin/FRONTEND/SIDEBAR.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<Map<dynamic, dynamic>> food = [
    {"Food Name": "Chicken Briyani", "Id": 101, "Price": 120, "Image": "assets/briyani.jpeg"},
    {"Food Name": "Chicken Fry", "Id": 102, "Price": 200, "Image": "assets/pexels-eghost-2611917.jpg"},
    {"Food Name": "Chicken Fried Rice", "Id": 103, "Price": 100, "Image": "assets/pexels-meruyert-gonullu-7469289.jpg"},
    {"Food Name": "Mutton Gravy", "Id": 104, "Price": 250, "Image": "assets/briyani.jpeg"},
    {
      "Food Name": "Chettinad Chicken Gravy",
      "Id": 105,
      "Price": 150,
      "Image": "assets/briyani.jpeg"
    },
    {"Food Name": "Shawarma", "Id": 106, "Price": 110, "Image": "assets/briyani.jpeg"},
    {"Food Name": "Dosa", "Id": 107, "Price": 40, "Image": "assets/briyani.jpeg"},
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: width*1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Menus",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddMenu()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 120,
                        decoration: const BoxDecoration(
                          color: Color(0xff059DC0),
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
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
                          "Add Menu",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        labelText: 'Search',
                        suffixIcon: const Icon(Icons.search)),
                    onChanged: (value) => {
                      setState(() {
                        // choice = value;
                      }),
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height * 0.73,
              width: width * 0.8,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListView.builder(
                itemCount: food.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 8.0,bottom: 8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MenuList(food:food[index])),
                        );
                      },
                      child: Container(
                        width: width * 0.3,
                        height:  height * 0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          // color: Color(0xff04ECF0),
                          color: Colors.white
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 60,
                                alignment: Alignment.center,
                                child: Text(
                                  food[index]['Id'].toString(),
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: height * 0.08,
                              width: width * 0.1,
                              decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  food[index]['Image']
                                ),
                                fit: BoxFit.cover
                              ),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 250,
                                alignment: Alignment.center,
                                child: Text(
                                  food[index]['Food Name'],
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 60,
                                alignment: Alignment.center,
                                child: Text(
                                  "₹${food[index]['Price'].toString()}",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
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
          ),
        ],
    );
  }
}
