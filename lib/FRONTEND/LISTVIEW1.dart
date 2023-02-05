import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Listview extends StatefulWidget {
  final table;

  const Listview({Key? key, required this.table}) : super(key: key);

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {


  List<Map<dynamic, dynamic>> selec = [];
  String _orderno = "";
  String _ph = "";
  String _name = "";
  int selected =0;
  List<int> _list = [];

  @override
  void initState() {
    // TODO: implement initState
    _list = List.generate(widget.table.length, (i) => 0);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: width * 1,
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Orders In",
                style: GoogleFonts.robotoCondensed(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
          ),
        ),
        Container(
          height: 680,
          width: double.infinity,
          child: ListView.builder(
            itemCount: widget.table.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 20,
                  child: ListTile(
                    onTap: () {
                      setState(() {
                        _orderno = widget.table[index]['Order No'].toString();
                        _name = widget.table[index]['Name'];
                        _ph =  widget.table[index]['Phone No'].toString();
                        selec = menu;
                        for(int i=0;i<_list.length;i++){
                          _list[i] = 0;
                        }
                        _list[index] = 1;
                        print(_list);
                      });
                    },
                    tileColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1,color:_list[index]==1? const Color(
                          0xffF0C808):Colors.transparent),
                    ),
                    selectedTileColor: Colors.yellow[50],
                    selected: _list[index]==1?true:false,
                    subtitle: Text(
                        '${table[index]['Phone No']}'),
                    title: Text(
                        'Order #${table[index]['Order No']}'),
                    trailing: SizedBox(
                      width: 113,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                '₹',
                                style: GoogleFonts
                                    .robotoCondensed(
                                    color: const Color(
                                        0xffF0C808),
                                    fontWeight:
                                    FontWeight.bold,
                                    fontSize: 25),
                              ),
                              SizedBox(
                                width: 60,
                                child: Text(
                                  '${table[index]['Total Price']}',
                                  style: GoogleFonts
                                      .robotoCondensed(
                                      color: Colors.black,
                                      fontWeight:
                                      FontWeight.bold,
                                      fontSize: 25),
                                ),
                              )
                            ],
                          ),
                          const Icon(Icons.arrow_right,size: 40, color: Color(
                              0xffF0C808),)
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
    ;
  }
}
