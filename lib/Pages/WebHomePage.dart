import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:web/Appcontroller.dart';
import 'package:web/Widgets/Devider.dart';
import 'package:web/Widgets/Maininfo.dart';
import 'package:web/Widgets/ScreenShort.dart';



class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
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
            icon: Icon(Icons.download),
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
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainInfo(),
              SizedBox(height: 40),
              MyDevider(),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ],
              ),
              SizedBox(height: 20),
              SizedBox(height: 40),
              ScreenShortPage(),
              SizedBox(height: 60),
             
            
            ],
          ),
        ),
      ),
    );
  }
}
