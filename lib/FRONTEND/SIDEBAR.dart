
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Navigation.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {


  int select = 0;


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    // var height = size.height;
    return Container(
      width: width * 0.18,
      color: Colors.black,
      child: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: ListView(
            children: [
              Text("QUIFOOD",style: GoogleFonts.robotoCondensed(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40),),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                selected: select==0?true:false,
                selectedTileColor: Color(0xffF0C808),
                hoverColor:Color(0xffF0C808),
                onTap: (){
                  setState(() {
                    select=0;
                  });
                  Navigation.homeNavigation.currentState?.pushNamed('/home/dashboard');
                },
                leading: const Icon(
                  Icons.dashboard_outlined,
                    color: Colors.blueGrey
                ),
                title: Text(
                  "Dashboard",
                  style: GoogleFonts.robotoCondensed(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18)
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                selected: select==1?true:false,
                selectedTileColor:  Color(0xffF0C808),
                hoverColor:  Color(0xffF0C808),
                onTap: (){
                  setState(() {
                    select=1;
                  });
                  Navigation.homeNavigation.currentState?.pushNamed('/home/order');
                },
                leading: const Icon(
                  Icons.list_alt_sharp,
                    color: Colors.blueGrey
                ),
                title: Text(
                  "Orders",
                  style: GoogleFonts.robotoCondensed(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18)
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                selected: select==2?true:false,
                selectedTileColor:  Color(0xffF0C808),
                hoverColor:  Color(0xffF0C808),
                onTap: (){
                  setState(() {
                    select=2;
                  });
                  Navigation.homeNavigation.currentState?.pushNamed('/home/menu');
                },
                leading: const Icon(
                  Icons.restaurant_menu_rounded,
                    color: Colors.blueGrey
                ),
                title:Text(
                  "Menus",
                  style: GoogleFonts.robotoCondensed(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18)
                ),
              ),

              const SizedBox(
                height: 15,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                selected: select==3?true:false,
                selectedTileColor:  Color(0xffF0C808),
                hoverColor:  Color(0xffF0C808),
                onTap: (){
                  setState(() {
                    select=3;
                  });
                  Navigation.homeNavigation.currentState?.pushNamed('/home/review');
                },
                    leading: const Icon(
                      Icons.rate_review_outlined,
                        color: Colors.blueGrey
                    ),
                title:Text(
                    "Reviews",
                    style: GoogleFonts.robotoCondensed(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18)
                  ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                onTap: (){
                  },
                hoverColor:  Color(0xffF0C808),
                leading: const Icon(
                  Icons.logout_outlined,
                    color: Colors.blueGrey
                ),
                title: Text(
                "Sign Out",
                style: GoogleFonts.robotoCondensed(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18)
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
