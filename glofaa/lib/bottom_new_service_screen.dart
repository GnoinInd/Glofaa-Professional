import 'package:flutter/material.dart';
import 'package:glofaa/new_job_details_screen.dart';
import 'package:glofaa/utils/resource/color_resource.dart';

class BottomNewServiceScreen extends StatefulWidget {
  const BottomNewServiceScreen({super.key});

  @override
  State<BottomNewServiceScreen> createState() => _BottomNewServiceScreenState();
}

class _BottomNewServiceScreenState extends State<BottomNewServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
           Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Image.asset("assets/images/newsticker.png"),
              SizedBox(
                width:4,
              ),
              Text(
                '1 New Job',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Poppins',
                    fontSize:28),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewJobDetailsScreen()));
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: ColorResource.white,
                  borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: ColorResource.grey_3,
                    blurRadius: 1.0, // soften the shadow
                    spreadRadius: 1.0, //extend the shadow
                    offset: Offset(
                      1.0, // Move to right 5  horizontally
                      2.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Exclusive: ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                            fontSize:16),
                      ),
                      SizedBox(width:10,),
                      Image.asset("assets/images/salesgrowth.png"),
                      Text(
                        '₹100 EXTRA',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                            fontSize:12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/plus1day.png"),
                      SizedBox(width:5,),
                      Text(
                        'Tomorrow',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                            fontSize:16),
                      ),
                      SizedBox(width:5,),
                      Text(
                        '4:01 pm',
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                            fontSize:16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset("assets/images/timeset.png"),
                      SizedBox(
                        width:5,
                      ),
                      Text(
                        '54:01',
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                            fontSize:10),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0, top: 5),
                    child: Text(
                      '24 credits',
                      style: TextStyle(
                          color: Colors.black54,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                          fontSize:16),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Icon(Icons.build_circle),
          const Text(
            'Welcome, New jobs will be shown here',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 15),
          ),
        ],
      ),
    );
  }
}
