import 'package:admin/FRONTEND/SIDEBAR.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Reviews extends StatefulWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  List<Map<dynamic, dynamic>> review = [
    {
      "Reviewer Name": "Venkat Raman",
      "Review":
          "It’s a great experience. The ambiance is very welcoming and charming.",
      "Rating": 5
    },
    {
      "Reviewer Name": "Srihari",
      "Review":
          "This place is great! Atmosphere is chill and cool but the staff is also really friendly.",
      "Rating": 4
    },
    {
      "Reviewer Name": "Visruthi",
      "Review":
          " Excellent food. Menu is extensive and seasonal to a particularly high standard. Definitely fine dining. ",
      "Rating": 2

    },
    {
      "Reviewer Name": "Anitha",
      "Review":
          "We are so fortunate to have this place just a few minutes drive away from home.",
      "Rating": 4
    },
    {
      "Reviewer Name": "Nandha Kumar",
      "Review":
          "Delicious food, waiters are very attentive, and super nice atmosphere. Plus it’s all at an affordable price.",
      "Rating": 1
    },
    {
      "Reviewer Name": "Venkat S P",
      "Review":
          "Excellent, unassuming and wonderful find. Great variety and fine value tasting menu.",
      "Rating": 3
    },
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Reviews",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height * 0.8,
                  width: width * 0.80,
                  color: Colors.black,
                  child: ListView.builder(
                    itemCount: review.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          alignment: Alignment.centerLeft,
                          height: height * 0.2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      review[index]['Reviewer Name'],
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  RatingBar.builder(
                                    itemSize: 30,
                                    initialRating: review[index]['Rating'],
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 2.0),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: Text(
                                  review[index]['Review'],
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
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
