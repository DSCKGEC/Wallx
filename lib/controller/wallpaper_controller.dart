import 'package:flutter_cache_manager/file.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get/get.dart';
import 'package:wallpaperapp/controller/download_controller.dart';

class WallpaperController extends DownloadController {
  Future<void> downloadTheWallpaper(String url) async {
    var file = await DefaultCacheManager().getSingleFile(url);
    print(file.path);
    await insertImagePath(url: url, path: file.path);
    // Get.showSnackbar(const GetSnackBar(
    //   title: 'done',
    //   message: 'image download',
    //   duration: Duration(seconds: 2),
    // ));
  }

//seton
  Future<void> setOnHomeScreen(String url) async {
    var filePath = await cacheWallpaper(url);
    await homeScreen(filePath.path);
    Get.showSnackbar(const GetSnackBar(
      title: 'done',
      message: 'image added on homescreen',
      duration: Duration(seconds: 2),
    ));
  }

  Future<void> setOnLockScreen(String url) async {
    var filePath = await cacheWallpaper(url);
    await lockScreen(filePath.path);
    Get.showSnackbar(const GetSnackBar(
      title: 'done',
      message: 'image added on homescreen',
      duration: Duration(seconds: 2),
    ));
  }

  Future<void> setOnHomeAndLockScreen(String url) async {
    var filePath = await cacheWallpaper(url);
    await lockAndHomeScreen(filePath.path);
    Get.showSnackbar(const GetSnackBar(
      title: 'done',
      message: 'image added on homescreen',
      duration: Duration(seconds: 2),
    ));
  }

//screens
  Future<void> homeScreen(String path) async {
    await WallpaperManager.setWallpaperFromFile(
        path, WallpaperManager.HOME_SCREEN);
  }

  Future<void> lockScreen(String path) async {
    await WallpaperManager.setWallpaperFromFile(
        path, WallpaperManager.LOCK_SCREEN);
  }

  Future<void> lockAndHomeScreen(String path) async {
    await WallpaperManager.setWallpaperFromFile(
        path, WallpaperManager.BOTH_SCREEN);
  }

//downloadFirst
  Future<File> cacheWallpaper(String url) async {
    var file = await DefaultCacheManager().getSingleFile(url);
    return file;
  }
}
