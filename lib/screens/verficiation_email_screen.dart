import 'package:flutter/material.dart';
import 'package:foodpanda_clone/widgets/custom_text_button.dart';
// ignore: unused_import
import 'package:foodpanda_clone/widgets/custom_text_field.dart';

class VerficiationEmailScreen extends StatefulWidget {
  const VerficiationEmailScreen({super.key});

  @override
  State<VerficiationEmailScreen> createState() => _VerficiationEmailScreenState();
}

class _VerficiationEmailScreenState extends State<VerficiationEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFFFF2885),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 20),
                    child: Image.asset(
                      "assets/email_icon.png",
                      width: 80,
                    ),
                  ),
                  Text(
                    "Verify your email address to get started",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "this help us to mitigate fraud and keep your personal data safe",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Divider(
                  height: 40,
                  color: Colors.grey[200],
                ),
                CustomTextButton(
                  text: "Send verification email",
                  onPressed: () {
                    //  Navigator.push(
                    //      context,
                    //      MaterialPageRoute(
                    //        builder: (context) => LoginWithEmailScreen(),
                    //      ));
                  },
                  isDisable: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}