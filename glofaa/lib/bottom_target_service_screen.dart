import 'package:flutter/material.dart';
import 'package:glofaa/choose_job_package_screen.dart';
import 'package:glofaa/utils/resource/color_resource.dart';
import 'package:glofaa/utils/resource/dimensions_resource.dart';
import 'package:glofaa/utils/resource/style_resource.dart';

class BottomTargetServiceScreen extends StatefulWidget {
  const BottomTargetServiceScreen({super.key});

  @override
  State<BottomTargetServiceScreen> createState() =>
      _BottomTargetServiceScreenState();
}

class _BottomTargetServiceScreenState extends State<BottomTargetServiceScreen> {
  var sliderValue = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25,
                    child: Image.asset('assets/images/signIn.png'),
                  ),
                  const Column(
                    children: [
                      Text(
                        'GLOFAA',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                            fontSize: 16),
                      ),
                      Text(
                        'PARTNER',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                            fontSize:20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your MG payment is at risk!',
                    style: TextStyle(
                        color: ColorResource.mgpaymentrisk,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize:20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '1 jobs sent',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize:16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '50 day’s left in this job Pack',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 10),
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ChooseJobPackageScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                               ColorResource.selectLanguageButton,
                          padding: const EdgeInsets.symmetric(horizontal: 10)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'See Details',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 13),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                  ),
                                ]),
                            child: const Icon(
                              Icons.keyboard_arrow_right,
                              size: 20,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Stack(
                      children: [
                        Image.asset("assets/images/fivestar.png"),
                        Positioned(
                          left:20,
                            top: 5,
                            bottom:10,
                            child: Image.asset("assets/images/starfield.png")),

                      ],),
                    title:  Text(
                      '4.6',
                      style: TextStyle(
                          color: ColorResource.startext,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                          fontSize:24),
                    ),
                    subtitle: const Text(
                      'Rating in last 100 jobs',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize:14),
                    ),
                    trailing: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                            ),
                          ]),
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        size: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  const Text(
                    'Minimum Rating required is 4.8',
                    style: TextStyle(
                        color: ColorResource.startext,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize:14),
                  ),
                  SliderTheme(
                    data: const SliderThemeData(
                      trackHeight: 18.6,
                      activeTrackColor: Colors.orange,
                      valueIndicatorColor: Color.fromRGBO(147, 76, 234, 1),
                      valueIndicatorTextStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                    child: Slider(
                      value: sliderValue,
                      onChanged: (newValue) {
                        setState(() {
                          sliderValue = newValue;
                        });
                      },
                      max: 5.0,
                      divisions: 50,
                      thumbColor: Colors.orange,
                      label: sliderValue.toStringAsFixed(1).toString(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:28,right:28),
                    child: Row(
                      children: [
                        Text("3.5",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.startext),),
                        Spacer(),
                        Text("4.3",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.startext),),
                        Spacer(),
                        Text("4.5",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.startext),),
                        Spacer(),
                        Text("4.6",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.startext),),
                        Spacer(),
                        Text("4.7",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.startext),),
                        Spacer(),
                        Text("4.8",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.startext),),
                        Spacer(),
                        Text("5",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.greenColor),),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                    ),
                  ]),
              child: Column(children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset("assets/images/passbook.png"),
                  title: const Text(
                    '75%',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      fontSize:20,
                    ),
                  ),
                  subtitle: const Text(
                    'Response Rate in last 20 jobs',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize:12),
                  ),
                  trailing: Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                          ),
                        ]),
                    child: const Icon(
                      Icons.keyboard_arrow_right,
                      size: 20,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const Divider(),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset("assets/images/passbook.png"),
                  title: const Text(
                    '85%',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      fontSize:20,
                    ),
                  ),
                  subtitle: const Text(
                    'Service Delivery Rate in last 20 jobs',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        fontSize:12),
                  ),
                  trailing: Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                          ),
                        ]),
                    child: const Icon(
                      Icons.keyboard_arrow_right,
                      size: 20,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const Divider(),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset("assets/images/passbook.png"),
                  title: const Text(
                    '100%',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      fontSize:20,
                    ),
                  ),
                  subtitle: const Text(
                    'First Time Right in last 20 jobs',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        fontSize:12),
                  ),
                  trailing: Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                          ),
                        ]),
                    child: const Icon(
                      Icons.keyboard_arrow_right,
                      size: 20,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const Divider(),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Stack(
                    children: [
                      Image.asset("assets/images/fivestar.png",height: 31.73,width: 25.67,),
                      Positioned(
                         left:8,
                          child: Image.asset("assets/images/starfield.png",height: 29.19,width: 24.44,)),

                    ],),
                  title: const Text(
                    '47.06%',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  subtitle: const Text(
                    'Estimate Pass in last 20 jobs',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                  trailing: Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                          ),
                        ]),
                    child: const Icon(
                      Icons.keyboard_arrow_right,
                      size: 20,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const Divider(),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset("assets/images/passbook.png"),
                  title: const Text(
                    '0',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  subtitle: const Text(
                    'Audit Fail in last 20 jobs',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                  trailing: Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                          ),
                        ]),
                    child: const Icon(
                      Icons.keyboard_arrow_right,
                      size: 20,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
