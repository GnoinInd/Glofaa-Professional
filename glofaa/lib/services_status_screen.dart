import 'package:flutter/material.dart';
import 'package:glofaa/bottom_home_service_screen.dart';
import 'package:glofaa/bottom_money_service_screen.dart';
import 'package:glofaa/bottom_new_service_screen.dart';
import 'package:glofaa/bottom_ongoing_service_screen.dart';
import 'package:glofaa/bottom_target_service_screen.dart';
import 'package:glofaa/utils/resource/color_resource.dart';
import 'package:glofaa/utils/resource/dimensions_resource.dart';
import 'package:glofaa/utils/resource/style_resource.dart';

import 'menu_screen.dart';

class ServicesStatusScreen extends StatefulWidget {
  const ServicesStatusScreen({super.key});

  @override
  State<ServicesStatusScreen> createState() => _ServicesStatusScreenState();
}

class _ServicesStatusScreenState extends State<ServicesStatusScreen> {
  int _currentIndex = 0;

  List bottomPages = const [
    BottomHomeServiceScreen(),
    BottomNewServiceScreen(),
    BottomOngoingServiceScreen(),
    BottomTargetServiceScreen(),
    BottomMoneyServiceScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 20,
            width: 40,
            decoration: BoxDecoration(
              color: ColorResource.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 1.0, // soften the shadow
                  spreadRadius: 1.0, //extend the shadow
                  offset: Offset(
                    1.0, // Move to right 5  horizontally
                    2.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
            ),
            child:  Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("50",style: StyleResource.instance.styleBold(DimensionResource.fontSizeSmallTo, ColorResource.black),),
               Image.asset("assets/images/navigationicon.png",height: 13.85,width: 21,)
              ],
            ),
          ),
          IconButton(
            icon: Image.asset("assets/images/customericon.png"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MenuScreen()));
            },
          ),
          IconButton(
            icon: Image.asset("assets/images/notificationpic.png"),
            onPressed: () {},
          ),

        ],
        leading: Image.asset("assets/images/menupic.png")
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.black54,
        selectedItemColor: const Color.fromRGBO(147, 76, 234, 1),
        selectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
        unselectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
        items:  [
          BottomNavigationBarItem(icon: Image.asset("assets/images/bottomhome.png"), label: "Home",),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/bottomnew.png"), label: "New"),
          BottomNavigationBarItem(
              icon:Image.asset("assets/images/bottomongoing.png"), label: "Ongoing"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/bottomtarget.png"), label: "Target"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/bottommoney.png"), label: "Money"),
        ],
        onTap: (selectedIndex) {
          setState(() {
            _currentIndex = selectedIndex;
          });
        },
      ),
      body: bottomPages[_currentIndex],
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
        child: const Icon(
          Icons.help,
          color: Colors.white,
        ),
      ),
    );
  }
}
