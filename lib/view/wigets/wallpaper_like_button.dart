// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:wallpaperapp/controller/wallpaper_controller.dart';
import 'package:wallpaperapp/model/wallpaper.dart';

class LikeButton extends StatefulWidget {
  final WallpaperController wallpaperController;
  final Wallpaper wallpaper;
  const LikeButton(
      {Key? key, required this.wallpaperController, required this.wallpaper})
      : super(key: key);

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool liked = false;

  showSnackBar(content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red[500],
        duration: const Duration(seconds: 2),
        padding: const EdgeInsets.only(left: 120, bottom: 7, top: 7),
        content: Text(
          content,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (liked) {
            liked = false;
          } else {
            liked = true;
            showSnackBar('You liked the wallpaper');
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 12.0,
        ),
        child: liked
            ? const Icon(
                Icons.favorite,
                color: Colors.red,
              )
            : const Icon(
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
