import 'package:flutter/material.dart';
import 'package:glofaa/delivery_summary_screen.dart';
import 'package:glofaa/utils/resource/color_resource.dart';

class CautionScreen extends StatefulWidget {
  const CautionScreen({super.key});

  @override
  State<CautionScreen> createState() => _CautionScreenState();
}

class _CautionScreenState extends State<CautionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'Caution',
      //     style: TextStyle(
      //         fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
      //   ),
      // ),
      body: Column(
        children: [
          const SizedBox(
            height:40,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Please complete these steps before starting job',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sanitize',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Hand & Mobile',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Always use',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Fresh mask & Gloves',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          Container(
            height: 55,
            margin: const EdgeInsets.only(left: 40, right: 40.0, bottom: 50),
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorResource.selectLanguageButton,
              borderRadius: BorderRadius.circular(13)
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DeliverySummaryScreen(
                              showInstructionSheet2: true,
                            )));
              },
              style: ElevatedButton.styleFrom(backgroundColor: ColorResource.selectLanguageButton ),
              child: const Text(
                "Start Job",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
