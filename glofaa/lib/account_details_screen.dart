import 'package:flutter/material.dart';
import 'package:glofaa/add_bank_details_screen.dart';
import 'package:glofaa/utils/resource/color_resource.dart';
import 'package:glofaa/utils/resource/dimensions_resource.dart';
import 'package:glofaa/utils/resource/style_resource.dart';

class AccountDetailsScreen extends StatefulWidget {
  const AccountDetailsScreen({super.key});

  @override
  State<AccountDetailsScreen> createState() => _AccountDetailsScreenState();
}

class _AccountDetailsScreenState extends State<AccountDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:ColorResource.accoutdetailsappbar,
        title: const Text(
          "Account Details",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: ListView(
        children: [Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 103,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30.0,vertical:10),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddBankDetailsScreen()));
                },
                style: OutlinedButton.styleFrom(
                    elevation: 3,
                    foregroundColor: const Color.fromRGBO(147, 76, 234, 1),
                    side: const BorderSide(
                      color: ColorResource.grey_3,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/bankpic.png"),
                         Text("Bank Account Details",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
                      ],
                    ),
                    SizedBox(height:10,),
                     Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Add details",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeExtraLarge, ColorResource.selectLanguageButton),),
                      ],
                    ),
                  ],
                )
              ),
            ),
            Container(
              height: 103,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30.0),
              child: OutlinedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const AddBankDetailsScreen()));
                  },
                  style: OutlinedButton.styleFrom(
                      elevation: 3,
                      foregroundColor: const Color.fromRGBO(147, 76, 234, 1),
                      side: const BorderSide(
                        color: ColorResource.grey_3,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("GST Details",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
                        ],
                      ),
                      SizedBox(height:10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Add details",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeExtraLarge, ColorResource.selectLanguageButton),),
                        ],
                      ),
                    ],
                  )
              ),
            ),
            Container(
              height: 103,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30.0,vertical:10),
              child: OutlinedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const AddBankDetailsScreen()));
                  },
                  style: OutlinedButton.styleFrom(
                      elevation: 3,
                      foregroundColor: const Color.fromRGBO(147, 76, 234, 1),
                      side: const BorderSide(
                        color: ColorResource.grey_3,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("PAN Card Details",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
                          Spacer(),
                          Text("Change",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.selectLanguageButton),),
                        ],
                      ),
                      SizedBox(height:10,),
                      Text("ID No.",style:  StyleResource.instance.style(DimensionResource.fontSizeDefault, ColorResource.black),),
                      SizedBox(height: 5,),
                      Text("EDCJDJ23B",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeExtraLarge, ColorResource.black),),
                    ],
                  )
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30.0,vertical:10),
              child: OutlinedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const AddBankDetailsScreen()));
                  },
                  style: OutlinedButton.styleFrom(
                      elevation: 3,
                      foregroundColor: const Color.fromRGBO(147, 76, 234, 1),
                      side: const BorderSide(
                        color: ColorResource.grey_3,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height:10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Bank Account Details",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
                          Spacer(),
                          Container(
                            height: 27,
                              width: 101,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: ColorResource.grey_3)
                              ),
                              child: Center(child: Text("Change",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.selectLanguageButton),))),
                        ],
                      ),
                      SizedBox(height:10,),
                      Text("Approved",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.snackbargreen),),
                      SizedBox(height:15,),
                      Text("Your bank details have been tested and approved",textAlign: TextAlign.start,style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.snackbargreen),),
                      SizedBox(height:10,),
                      Text("Bank Account Number",textAlign: TextAlign.start,style:  StyleResource.instance.style(DimensionResource.fontSizeDefault, ColorResource.black),),
                      Text("340743074302",textAlign: TextAlign.start,style:  StyleResource.instance.styleMedium(DimensionResource.fontSizeExtraLarge, ColorResource.black),),
                      SizedBox(height:10,),
                      Text("Bank Name",textAlign: TextAlign.start,style:  StyleResource.instance.style(DimensionResource.fontSizeDefault, ColorResource.black),),
                      Text("STATE BANK OF INDIA ",textAlign: TextAlign.start,style:  StyleResource.instance.styleMedium(DimensionResource.fontSizeExtraLarge, ColorResource.black),),
                      SizedBox(height:10,),
                      Text("Name (as registered in Bank)",textAlign: TextAlign.start,style:  StyleResource.instance.style(DimensionResource.fontSizeDefault, ColorResource.black),),
                      Text("Hrithik Sharma",textAlign: TextAlign.start,style:  StyleResource.instance.styleMedium(DimensionResource.fontSizeExtraLarge, ColorResource.black),),
                      SizedBox(height: 15,),
                    ],
                  )
              ),
            ),
          ],
        ),
    ],
      ),
    );
  }
}
