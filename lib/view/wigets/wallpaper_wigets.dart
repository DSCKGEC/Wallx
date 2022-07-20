import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaperapp/controller/wallpaper_controller.dart';
import 'package:wallpaperapp/model/wallpaper.dart';
import 'package:wallpaperapp/view/utils/helpers/colors_helper.dart';
import 'package:wallpaperapp/view/utils/helpers/style_helper.dart';

class SetButton extends StatelessWidget {
  final WallpaperController wallpaperController;
  final Wallpaper wallpaper;
  const SetButton(
      {Key? key, required this.wallpaper, required this.wallpaperController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => Container(
                  decoration: const BoxDecoration(
                    color: whitecolor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  height: Get.height * 0.4,
                  child: ListView(
                    children: [
                      ListTile(
                        onTap: () {
                          Get.back();
                        },
                        leading: const Text(
                          'set wallpaper as :',
                          style: h1,
                        ),
                        trailing: const Icon(
                          Icons.cancel_outlined,
                          color: blackcolor,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          wallpaperController
                              .setOnHomeScreen(wallpaper.urls.regular);
                          Get.back();
                        },
                        leading: const Icon(
                          Icons.home_outlined,
                          color: blackcolor,
                        ),
                        title: const Text(
                          'homescreen',
                          style: h1,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          wallpaperController
                              .setOnLockScreen(wallpaper.urls.regular);
                          Get.back();
                        },
                        leading: const Icon(
                          Icons.lock_open,
                          color: blackcolor,
                        ),
                        title: const Text(
                          'LockScreen',
                          style: h1,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          wallpaperController
                              .setOnHomeAndLockScreen(wallpaper.urls.regular);
                          Get.back();
                        },
                        leading: const Icon(
                          Icons.screen_lock_landscape,
                          color: blackcolor,
                        ),
                        title: const Text(
                          'both ',
                          style: h1,
                        ),
                      ),
                    ],
                  ),
                ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 80.0,
        ),
        child: const Text(
          'set as',
          style: buttons,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: pinkcolor,
        ),
      ),
    );
  }
}

class WallpaperViewButton extends StatelessWidget {
  final Color color;
  final Function onpressed;
  final IconData iconData;
  const WallpaperViewButton(
      {Key? key,
      required this.color,
      required this.onpressed,
      required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        onpressed();
      },
      icon: Icon(iconData),
      color: color,
    );
  }
}
