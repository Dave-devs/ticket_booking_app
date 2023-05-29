import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout{
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  //Get helps with dynamic screen sizes and does not require Context like MediaQuery.
  static getScreenHeight() {
    return Get.height;
  }
  static getScreenWidth() {
    return Get.width;
  }

  //This helps calculate needed height or width per screen size.
  /*pixels is the specified height or width given to any UI.
  * Above function is each different screen sizes with "Get".
  * We then divided the specified size{pixel} with each screen sizes{phone width/height}.
  * i.e {screen size}844 / 200{given UI height/width} => 4.22*/
  static getHeight(double pixels) {
    double x = getScreenHeight()/pixels;
    return getScreenHeight()/x;
  }

  static getWidth(double pixels) {
    double y = getScreenWidth()/pixels;
    return getScreenWidth()/y;
  }
  //Note: Smaller screen size means smaller UI sizes after calculation.
}