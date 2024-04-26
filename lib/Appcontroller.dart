import 'package:get/get.dart';
import 'dart:html'as html;
class AppController extends GetxController{
  String appUrl= "https://github.com/khaled000234/askai/releases/download/2.1/movie.apk";
  String apkName="movie.apk";
  Future downloadApk() async{
    try{
      final anchor =html.AnchorElement(href: appUrl)..download=apkName;
      html.document.body!.children.add(anchor);
      anchor.click();
      html.document.body!.children.remove(anchor);
    }catch(e){
      print(e);
    }
  }

}