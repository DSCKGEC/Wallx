import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaperapp/controller/wallpaper_controller.dart';

import 'package:wallpaperapp/model/wallpaper.dart';
import 'package:wallpaperapp/view/utils/helpers/colors_helper.dart';

import 'package:wallpaperapp/view/wigets/wallpaper_wigets.dart';

class WallpaperView extends StatelessWidget {
  final Wallpaper wallpaper;
  const WallpaperView({Key? key, required this.wallpaper}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: wallpaper.urls.regular,
            child: Image.network(
              wallpaper.urls.regular,
              height: Get.height,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WallpaperViewButton(
                  color: whitecolor,
                  onpressed: () {
                    Get.back();
                  },
                  iconData: Icons.arrow_back_ios,
                ),
                GetBuilder<WallpaperController>(
                  init: WallpaperController(),
                  builder: (controller) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //add the download button here
                        SetButton(
                          wallpaper: wallpaper,
                          wallpaperController: controller,
                        ),
                        //add the like button here
                      ],
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
