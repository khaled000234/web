import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web/Appcontroller.dart';
import 'package:web/Widgets/Devider.dart';
import 'package:web/Widgets/ScreenShort.dart';

import '../Widgets/WebFeaturesWidget.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
        AppController appcontroller =Get.put(AppController());
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/photos/logo.png",
            width: 30,
          ),
        ),
        title: Text(
          'Movie',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          ElevatedButton.icon(
            onPressed: () {
              appcontroller.downloadApk();
            },
            icon: Icon(
              Icons.download,
              color: Colors.white,
            ),
            label: Text(
              'Donwload',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            Column(
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
                  "The Best App For Connecting with",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                Text(
                  "Your Friends.",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                const Text(
                  "App version 1.0",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 700,
                  child: Text(
                    "You can track all your transaction expenses and incomes with the helping of this app, this app is spacialy made for student and a large group of member management",
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
            SizedBox(height: 40),
            Container(
              width: w / 1.2,
              height: w / 1.2,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                image: DecorationImage(
                  image: AssetImage("assets/photos/main.png"),
                ),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: 40),
            SizedBox(height: 40),
            MyDevider(),
            ScreenShortPage(),
            SizedBox(height: 40),
          
          ],
        ),
      ),
    );
  }
}
