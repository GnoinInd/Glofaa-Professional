import 'dart:math';

import 'package:flutter/material.dart';
import 'package:glofaa/utils/resource/color_resource.dart';
import 'package:glofaa/utils/resource/dimensions_resource.dart';
import 'package:glofaa/utils/resource/style_resource.dart';

class GlofaaChatScreen extends StatefulWidget {
  const GlofaaChatScreen({super.key});

  @override
  State<GlofaaChatScreen> createState() => _GlofaaChatScreenState();
}

class _GlofaaChatScreenState extends State<GlofaaChatScreen> {
  var message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResource.accoutdetailsappbar,
          title: const Text(
        'Glofaa Chat',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: 'Poppins',
          fontSize: 20,
        ),
      )),
      body: Column(
        children: [
          Container(
            color: ColorResource.simrancolor,
            child: ListTile(
              leading: CircleAvatar(
                child: Image.asset('assets/images/senitizemask.png'),
              ),
              title: const Text('Mr. Alpha',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      fontSize:20)),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Lotus Boulevard, Sector 100, Noida, UP',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          fontSize: 12)),
                  Text('10:00 am, 20th March',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          fontSize: 12)),
                ],
              ),
              trailing: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade700, width: 2),
                    borderRadius: BorderRadius.circular(7)),
                child: Icon(
                  Icons.call_outlined,
                  size: 20,
                  color: Colors.blue.shade700,
                ),
              ),
            ),
          ),
         const SizedBox(height:15,),
          Expanded(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/chat_img.png",
                  height:100,
                  width:100,
                ),
                const Text(
                  'Introducing chat',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize:16,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left:45,right:45,top: 20),
                  child: Text(
                    'Keep your account safe. Never share personal or account information in this chat including phone number, pin and pass codes ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: Row(
              children: [
              Container(
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  border: Border.all(color: ColorResource.grey_3)
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Text("Please confirm booking",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.selectLanguageButton),),
                  ),
                ),

              ),
              SizedBox(width: 16,),
              Container(
                height: 36,
                width: 83,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  border: Border.all(color: ColorResource.grey_3)
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Text("Hello",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.selectLanguageButton),),
                  ),
                ),

              ),
                SizedBox(width: 16,),
              Container(
                height: 36,
                width: 49,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  border: Border.all(color: ColorResource.grey_3)
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Text("Hii",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.selectLanguageButton),),
                  ),
                ),

              ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: message,
                    textInputAction: TextInputAction.newline,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 25),
                        hintText: 'Type your message',
                        hintStyle: const TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(30)),
                        suffixIcon: Transform.rotate(
                          angle: pi / 4,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.attach_file,
                              )),
                        )),
                  ),
                ),
                Container(
                  width: 47,
                  height: 47,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
