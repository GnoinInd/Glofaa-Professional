import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glofaa/new_job_status_screen.dart';
import 'package:glofaa/utils/resource/color_resource.dart';

class NewJobDetailsScreen extends StatefulWidget {
  const NewJobDetailsScreen({super.key});

  @override
  State<NewJobDetailsScreen> createState() => _NewJobDetailsScreenState();
}

class _NewJobDetailsScreenState extends State<NewJobDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Exclusive',
              style: TextStyle(
                  color: ColorResource.exclusivetext,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  fontSize:16),
            ),
            const SizedBox(
              height: 10,
            ),
             Row(
              children: [
                Image.asset("assets/images/plus1day.png"),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Tomorrow, ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      fontSize:16),
                ),
                Text(
                  '4:00 pm',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      fontSize:16),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Astra tower, south building,WB',
              style: TextStyle(
                  color: Colors.black54,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  fontSize:16),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorResource.selectLanguageButton,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                icon: const Text(
                  'See on map',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      fontSize:16),
                ),
                label: const Icon(
                  Icons.directions_rounded,
                  size: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: ColorResource.grey_3),
                borderRadius: BorderRadius.circular(10),

              ),
              margin: const EdgeInsets.only(top:35,bottom:35,left:25,right:25),
              child:  Row(
                children: [
                  Image.asset("assets/images/salesgrowth.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '₹100 Extra',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'surge price for the job',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Text(
              'Job Details',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  fontSize:16),
            ),
            const SizedBox(
              height:8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 200,
                  child: Text(
                    'Classic bathroom cleaning',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize:12),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: Colors.black54,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        FontAwesomeIcons.three,
                        size: 12,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      '₹1117',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
            const Text(
              'Classic Bathroom cleaning x 1',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  fontSize: 12),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 230,
                  child: Text(
                    'Convenience Fee',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '₹49',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 230,
                  child: Text(
                    'Surge Price',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '₹100',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                ),
              ],
            ),
            const Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 230,
                  child: Text(
                    'Total',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        fontSize:12),
                  ),
                ),
                Text(
                  '₹1296',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                ),
              ],
            ),
            SizedBox(height: 28,),
            // Container(
            //   alignment: Alignment.center,
            //   padding: const EdgeInsets.all(20),
            //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.greenAccent,
            //       boxShadow: const [
            //         BoxShadow(
            //           color: Color(0x3F000000),
            //           blurRadius: 4,
            //         ),
            //       ]),
            //   child: const Text(
            //     'xxxx----xxxx',
            //     style: TextStyle(
            //         color: Colors.black54,
            //         fontWeight: FontWeight.w600,
            //         fontFamily: 'Poppins',
            //         fontSize: 12),
            //   ),
            // ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NewJobStatusScreen()));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical:40),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: ColorResource.white,
                    borderRadius: BorderRadius.circular(95),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: ColorResource.selectLanguageButton,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Slide to accept (24 credits)',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
