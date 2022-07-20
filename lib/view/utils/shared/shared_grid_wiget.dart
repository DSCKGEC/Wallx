import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaperapp/model/wallpaper.dart';
import 'package:wallpaperapp/view/screens/wallpaper_view.dart';
import 'package:wallpaperapp/view/utils/helpers/colors_helper.dart';

class SharedGridWiget extends StatelessWidget {
  final List<Wallpaper> wallpapers;
  const SharedGridWiget({Key? key, required this.wallpapers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30.0,
        bottom: 0,
        left: 30.0,
        right: 30.0,
      ),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30,
          crossAxisSpacing: 30,
          childAspectRatio: 2 / 2.7,
        ),
        itemCount: wallpapers.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Get.to(
              WallpaperView(
                wallpaper: wallpapers[index],
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: pinkcolor,
              ),
              child: Hero(
                tag: wallpapers[index].urls.regular,
                child: Image.network(
                  wallpapers[index].urls.regular,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
