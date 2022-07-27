// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:wallpaperapp/controller/wallpaper_controller.dart';
import 'package:wallpaperapp/model/wallpaper.dart';

class LikeButton extends StatelessWidget {
  final WallpaperController wallpaperController;
  final Wallpaper wallpaper;
  const LikeButton(
      {Key? key, required this.wallpaperController, required this.wallpaper})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 12.0,
        ),
        child: const Icon(
          Icons.favorite_outline,
          color: Colors.red,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
        ),
      ),
    );
  }
}
