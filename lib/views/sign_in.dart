import 'package:flutter/material.dart';
import 'package:practical4/constants/size_constant.dart';
import 'package:practical4/views/sign_in_form.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: displayWidth(context) * 0.02,
                  top: displayHeight(context) * 0.02,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        color: Colors.white,
                        size: 30,
                        Icons.arrow_back,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        right: displayWidth(context) * 0.04,
                        top: displayHeight(context) * 0.01,
                      ),
                      child: const Text(
                        "SIGN IN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    height: displayHeight(context),
                    width: displayWidth(context),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: displayWidth(context) * 0.06,
                      top: displayHeight(context) * 0.03,
                      right: displayWidth(context) * 0.05,
                    ),
                    child: const SignInForm(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
