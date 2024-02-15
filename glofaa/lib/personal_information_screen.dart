import 'package:flutter/material.dart';
import 'package:glofaa/utils/resource/color_resource.dart';
import 'package:glofaa/utils/resource/dimensions_resource.dart';
import 'package:glofaa/utils/resource/style_resource.dart';

class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({super.key});

  @override
  State<PersonalInformationScreen> createState() =>
      _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  var email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Container(
        height: 82,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: ColorResource.grey_2)
        ),
        child: Center(
          child: InkWell(
            onTap:() {
              /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BankDetailsScreen()));*/
            },
            child: Center(
              child: Container(
                height: 58,
                width: 341,
                decoration: BoxDecoration(
                  color: ColorResource.selectLanguageButton,
                  borderRadius: BorderRadius.circular(75),
                ),
                child: Center(
                  child: Text("Continue",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.white),),
                ),
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: ColorResource.accoutdetailsappbar,
        // title: const Text(
        //   "Personal Information",
        //   style: TextStyle(
        //       fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:22,right: 16,top: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Personal information",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
                Spacer(),
                Container(
                  height: 21,
                  width: 21,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    border: Border.all(color: ColorResource.grey_3)
                  ),
                  child: Center(
                    child: Image.asset("assets/images/upicon.png"),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Profile Photo",
              style: TextStyle(
                  color: ColorResource.black,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 15),
            ),
            const SizedBox(
              height: 5,
            ),
            Stack(
              children: [
                Container(
                  height: 59,
                  width: 78,
                  child: Image.asset(
                    "assets/images/endedapic.png",
                    width: 250,
                    height: 250,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                      height: 27,
                      width:27,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55),
                          border: Border.all(color: ColorResource.grey_3)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.edit_outlined,
                          color: Colors.blue,
                          size: 16,
                        ),
                      )),
                ),

              ],
            ),

            const SizedBox(
              height: 10,
            ),
            const Text(
              "Email Id",
              style: TextStyle(
                  color: ColorResource.black,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 14),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height:27,
              color: ColorResource.accoutdetailsappbar,
              child: TextField(
                // textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.emailAddress,
                controller: email,
                style: const TextStyle(
                    color: ColorResource.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    )),
              ),
            ),
             SizedBox(height: 20,),
             Row(
              children: [
               Image.asset('assets/images/Locationpic.png'),
                SizedBox(width:10,),
                Text(
                  "Product Delivery Address",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      fontSize: 16),
                ),
                Spacer(),
                Container(
                  height: 21,
                  width: 21,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(55),
                      border: Border.all(color: ColorResource.grey_3)
                  ),
                  child: Center(
                    child: Image.asset("assets/images/righticon.png"),
                  )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
