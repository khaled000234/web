import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web/Appcontroller.dart';

class MainInfo extends StatelessWidget {
  const MainInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
      AppController appcontroller =Get.put(AppController());
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/photos/logo.png",
                    width: 50,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Movie",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ],
              ),
              Text(
                "The Best App For watch to trailer for movie",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              // Text(
              //   "Your Friends.",
              //   style: TextStyle(
              //     fontSize: 40,
              //     fontWeight: FontWeight.bold,
              //     color: Theme.of(context).colorScheme.onBackground,
              //   ),
              // ),
              const Text(
                "App version 2.1",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 700,
                child: Text(
                  "You can  watch to trailer for movie , the all the actor and the secien   ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GestureDetector(
                      onTap: (){
                       appcontroller.downloadApk();
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.android,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Download App",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          width: w / 2.6,
          height: w / 2.6,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            image: DecorationImage(
              image: AssetImage(""),
            ),
            shape: BoxShape.circle,
          ),
        )
      ],
    );
  }
}
