// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:wallpaperapp/controller/wallpaper_controller.dart';
import 'package:wallpaperapp/model/wallpaper.dart';

class DownloadButton extends StatefulWidget {
  final WallpaperController wallpaperController;
  final Wallpaper wallpaper;
  const DownloadButton(
      {Key? key, required this.wallpaperController, required this.wallpaper})
      : super(key: key);

  @override
  State<DownloadButton> createState() => _DownloadButtonState();
}

class _DownloadButtonState extends State<DownloadButton> {
  showSnackBar(content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green[500],
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
        widget.wallpaperController
            .downloadTheWallpaper(widget.wallpaper.urls.regular);
        showSnackBar('wallpaper is downloaded');
        print(widget.wallpaper.urls.regular);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 12.0,
        ),
        child: const Icon(
          Icons.download,
          color: Colors.green,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
        ),
      ),
    );
  }
}

showSnackBar(BuildContext context, content) {
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
