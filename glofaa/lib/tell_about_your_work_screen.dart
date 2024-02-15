import 'package:flutter/material.dart';
import 'package:glofaa/utils/resource/color_resource.dart';
import 'package:glofaa/utils/resource/dimensions_resource.dart';
import 'package:glofaa/utils/resource/style_resource.dart';

class TellAboutYourWorkScreen extends StatefulWidget {
  const TellAboutYourWorkScreen({super.key});

  @override
  State<TellAboutYourWorkScreen> createState() =>
      _TellAboutYourWorkScreenState();
}

enum Ques1 { option1, option2, option3 }

enum Ques2 { option1, option2, option3 }

enum Ques3 { option1, option2, option3, option4 }

enum Ques4 { option1, option2 }

class _TellAboutYourWorkScreenState extends State<TellAboutYourWorkScreen> {
  Ques1? _ques1;
  Ques2? _ques2;
  Ques3? _ques3;
  Ques4? _ques4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 82,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: ColorResource.grey_2)
        ),
        child: Center(
          child: InkWell(
            onTap:() {},
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
      body: Column(
        children: [
          Container(
            height:144,
            width: double.infinity,
            color: ColorResource.accoutdetailsappbar,
            child: Padding(
              padding: const EdgeInsets.only(left: 16,right: 16,top:42),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap : (){
                          Navigator.pop(context);
                        },
                          child: const Icon(Icons.arrow_back_ios)),
                      const Spacer(),
                      Container(
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: ColorResource.white,
                        ),
                        child: Center(
                          child: Text("Save",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeSmallTo, ColorResource.selectLanguageButton),),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                  Text("Tell us about your work!",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeDoubleExtraLarge, ColorResource.black),),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: ColorResource.grey_3)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                        child: Column(
                          children: [
                            Text("How many years of experience do you hav?",textAlign: TextAlign.start,style:  StyleResource.instance.style(DimensionResource.fontSizeLarge, ColorResource.black),),
                            RadioListTile(
                                activeColor: ColorResource.selectLanguageButton,
                                controlAffinity: ListTileControlAffinity.trailing,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                title: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    "0-1 years",
                                    style: TextStyle(
                                        color: ColorResource.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 13),
                                  ),
                                ),
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                value: Ques1.option1,
                                groupValue: _ques1,
                                onChanged: (value) {
                                  setState(() {
                                    _ques1 = value;
                                  });
                                }),
                            RadioListTile(
                                activeColor: ColorResource.selectLanguageButton,
                                controlAffinity: ListTileControlAffinity.trailing,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                title: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    "1-3 years",
                                    style: TextStyle(
                                        color: ColorResource.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 13),
                                  ),
                                ),
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                value: Ques1.option2,
                                groupValue: _ques1,
                                onChanged: (value) {
                                  setState(() {
                                    _ques1 = value;
                                  });
                                }),
                            RadioListTile(
                                activeColor: ColorResource.selectLanguageButton,
                                controlAffinity: ListTileControlAffinity.trailing,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                title: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    "More tha 3 years",
                                    style: TextStyle(
                                        color: ColorResource.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 13),
                                  ),
                                ),
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                value: Ques1.option3,
                                groupValue: _ques1,
                                onChanged: (value) {
                                  setState(() {
                                    _ques1 = value;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height:10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: ColorResource.grey_3)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Where have you worked before?",textAlign: TextAlign.start,style:  StyleResource.instance.style(DimensionResource.fontSizeLarge, ColorResource.black),),
                            RadioListTile(
                                activeColor: ColorResource.selectLanguageButton,
                                controlAffinity: ListTileControlAffinity.trailing,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                title: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    "Branded stores",
                                    style: TextStyle(
                                        color: ColorResource.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 13),
                                  ),
                                ),
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                value: Ques2.option1,
                                groupValue: _ques2,
                                onChanged: (value) {
                                  setState(() {
                                    _ques2 = value;
                                  });
                                }),
                            RadioListTile(
                                activeColor: ColorResource.selectLanguageButton,
                                controlAffinity: ListTileControlAffinity.trailing,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                title: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    "Service Center",
                                    style: TextStyle(
                                        color: ColorResource.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 13),
                                  ),
                                ),
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                value: Ques2.option2,
                                groupValue: _ques2,
                                onChanged: (value) {
                                  setState(() {
                                    _ques2 = value;
                                  });
                                }),
                            RadioListTile(
                                activeColor: ColorResource.selectLanguageButton,
                                controlAffinity: ListTileControlAffinity.trailing,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                title: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    "Local market shops/own Business",
                                    style: TextStyle(
                                        color: ColorResource.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 13),
                                  ),
                                ),
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                value: Ques2.option3,
                                groupValue: _ques2,
                                onChanged: (value) {
                                  setState(() {
                                    _ques2 = value;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height:10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: ColorResource.grey_3)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("What is your current monthly earning?",textAlign: TextAlign.start,style:  StyleResource.instance.style(DimensionResource.fontSizeLarge, ColorResource.black),),
                            RadioListTile(
                                activeColor: ColorResource.selectLanguageButton,
                                controlAffinity: ListTileControlAffinity.trailing,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                title: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    "Less than INR 20000",
                                    style: TextStyle(
                                        color: ColorResource.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 13),
                                  ),
                                ),
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                value: Ques3.option1,
                                groupValue: _ques3,
                                onChanged: (value) {
                                  setState(() {
                                    _ques3 = value;
                                  });
                                }),
                            RadioListTile(
                                activeColor: ColorResource.selectLanguageButton,
                                controlAffinity: ListTileControlAffinity.trailing,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                title: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    "INR 20000-40000",
                                    style: TextStyle(
                                        color: ColorResource.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 13),
                                  ),
                                ),
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                value: Ques3.option2,
                                groupValue: _ques3,
                                onChanged: (value) {
                                  setState(() {
                                    _ques3 = value;
                                  });
                                }),
                            RadioListTile(
                                activeColor: ColorResource.selectLanguageButton,
                                controlAffinity: ListTileControlAffinity.trailing,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                title: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    "INR 40000-80000",
                                    style: TextStyle(
                                        color: ColorResource.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 13),
                                  ),
                                ),
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                value: Ques3.option3,
                                groupValue: _ques3,
                                onChanged: (value) {
                                  setState(() {
                                    _ques3 = value;
                                  });
                                }),
                            RadioListTile(
                                activeColor: ColorResource.selectLanguageButton,
                                controlAffinity: ListTileControlAffinity.trailing,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                title: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    "More than INR80000",
                                    style: TextStyle(
                                        color: ColorResource.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 13),
                                  ),
                                ),
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                value: Ques3.option4,
                                groupValue: _ques3,
                                onChanged: (value) {
                                  setState(() {
                                    _ques3 = value;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: ColorResource.grey_3)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                        child: Column(
                          children: [
                            Text("How many family members do you have?",textAlign: TextAlign.start,style:  StyleResource.instance.style(DimensionResource.fontSizeLarge, ColorResource.black),),
                            RadioListTile(
                                activeColor: ColorResource.selectLanguageButton,
                                controlAffinity: ListTileControlAffinity.trailing,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                title: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    "Less than 3 members",
                                    style: TextStyle(
                                        color: ColorResource.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 13),
                                  ),
                                ),
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                value: Ques4.option1,
                                groupValue: _ques4,
                                onChanged: (value) {
                                  setState(() {
                                    _ques4 = value;
                                  });
                                }),
                            RadioListTile(
                                activeColor: ColorResource.selectLanguageButton,
                                controlAffinity: ListTileControlAffinity.trailing,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                title: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    "3-8 members",
                                    style: TextStyle(
                                        color: ColorResource.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 13),
                                  ),
                                ),
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                value: Ques4.option2,
                                groupValue: _ques4,
                                onChanged: (value) {
                                  setState(() {
                                    _ques4 = value;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                  ],
            ),
          ),
        ],
      ),
    );
  }
}
