import 'package:flutter/material.dart';
import 'package:practical4/constants/size_constant.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: displayHeight(context) - MediaQuery.of(context).padding.top,
            width: displayWidth(context),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg5.jpeg',
                ),
                opacity: 0.5,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(""),
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(
                          0xFFe40800,
                        ),
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        '/signup',
                        arguments: "signup",
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: displayWidth(context) * 0.2,
                        top: displayHeight(context) * 0.01,
                        right: displayWidth(context) * 0.2,
                        bottom: displayHeight(context) * 0.01,
                      ),
                      child: const Text(
                        "SIGN UP",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(
                          0xFFe40800,
                        ),
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/signin');
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: displayWidth(context) * 0.2,
                        top: displayHeight(context) * 0.01,
                        right: displayWidth(context) * 0.2,
                        bottom: displayHeight(context) * 0.01,
                      ),
                      child: const Text(
                        "SIGN IN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
