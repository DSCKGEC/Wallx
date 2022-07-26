// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:wallpaperapp/controller/wallpaper_controller.dart';
import 'package:wallpaperapp/model/wallpaper.dart';
import 'package:wallpaperapp/view/utils/helpers/colors_helper.dart';
import 'package:wallpaperapp/view/utils/helpers/style_helper.dart';

class DownloadButton extends StatelessWidget {
  final WallpaperController wallpaperController;
  final Wallpaper wallpaper;
  const DownloadButton(
      {Key? key, required this.wallpaperController, required this.wallpaper})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await wallpaperController.downloadTheWallpaper(wallpaper.urls.regular);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20.0,
        ),
        child: const Icon(
          Icons.download,
          color: Colors.white,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: pinkcolor,
        ),
      ),
    );
  }
}
