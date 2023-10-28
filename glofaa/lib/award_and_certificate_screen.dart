import 'package:flutter/material.dart';
import 'package:glofaa/verify_vaccination.dart';

class AwardAndCertificateScreen extends StatefulWidget {
  const AwardAndCertificateScreen({super.key});

  @override
  State<AwardAndCertificateScreen> createState() =>
      _AwardAndCertificateScreenState();
}

class _AwardAndCertificateScreenState extends State<AwardAndCertificateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Award And Certificate",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
              child: Image.asset(
            "assets/images/award_image.png",
            width: 280,
            height: 260,
          )),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topLeft,
            child: const Text(
              "Type",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(230, 210, 255, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              onPressed: () {
                /*Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerifyVaccinationScreen()));*/
              },
              child: const SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 220,
                      child: Text(
                        "Award and Certificate",
                        style: TextStyle(
                            color: Color.fromRGBO(147, 76, 234, 1),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 15),
                      ),
                    ),
                    Icon(
                      Icons.expand_more_rounded,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          Container(
            height: 30,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 20.0),
            child: ElevatedButton(
              onPressed: () {
             //   Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalInformationScreen()));
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text(
                "Browse",
                maxLines: 1,
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          
          Container(
            height: 120,
            width: 150,
            padding: EdgeInsets.only(left: 20.0),
            child: Card(
              elevation: 0,
              color: Color.fromRGBO(230, 210, 255, 1),
              child: Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.topRight,
                  child: Icon(Icons.close_outlined, color: Color.fromRGBO(147, 76, 234, 1),)),
            ),
          ),

          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: 180,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VerifyVaccinationScreen()));
                },
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    backgroundColor:
                    const Color.fromRGBO(147, 76, 234, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "Save Details",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
