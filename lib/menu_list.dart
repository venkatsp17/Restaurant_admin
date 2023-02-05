import 'package:admin/FRONTEND/SIDEBAR.dart';
import 'package:flutter/material.dart';
class MenuList extends StatefulWidget {
  final Map<dynamic,dynamic>food;
  const MenuList({Key? key, required this.food}) : super(key: key);

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  final TextEditingController _Id = TextEditingController();
  final TextEditingController _FName = TextEditingController();
  final TextEditingController _Price = TextEditingController();

  void initState(){
    _Id.text = widget.food['Id'].toString();
    _FName.text = widget.food['Food Name'];
    _Price.text = widget.food['Price'].toString();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Menu List",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height * 0.6,
              width: width * 0.8,
              decoration: const BoxDecoration(
                color: Colors.white,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: height * 0.4,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                            widget.food['Image'],
                          ),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 140,
                              alignment: Alignment.center,
                              child: const Text("Menu Id:",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 50,
                              width: 200,
                              child: TextField(
                                controller: _Id,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Id',
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 140,
                              alignment: Alignment.center,
                              child: const Text("Food Name:",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 50,
                              width: 200,
                              child: TextField(
                                controller: _FName,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Food Name',
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 140,
                              alignment: Alignment.center,
                              child: const Text("Price:",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 50,
                              width: 200,
                              child: TextField(
                                controller: _Price,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Price',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: ()async {
                                  final ConfirmAction? action = await _asyncConfirmDialog(context);
                                  print("Confirm Action $action" );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 140,
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
                                  child: const Text("Save Changes",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 150,
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
                                child: const Text("Restore Default",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
  }
}
enum ConfirmAction { Cancel, Confirm}
Future<ConfirmAction?> _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Confirm save changes?'),
        // content: const Text(
        //     'This will delete the order permanently.'),
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
