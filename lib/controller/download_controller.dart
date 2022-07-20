import 'package:hive/hive.dart';
import 'package:wallpaperapp/controller/base_controller.dart';
import 'package:wallpaperapp/view/utils/constants/constant.dart';

class DownloadController extends BaseController {
  Future<void> insertImagePath({String? url, String? path}) async {
    var box = await Hive.openBox(downloadBox);
    box.put(url, path);
  }
}
