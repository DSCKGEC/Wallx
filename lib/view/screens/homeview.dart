import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaperapp/controller/home_controller.dart';
import 'package:wallpaperapp/view/utils/helpers/colors_helper.dart';
import 'package:wallpaperapp/view/utils/helpers/style_helper.dart';
import 'package:wallpaperapp/view/utils/shared/shared_grid_wiget.dart';

import 'package:anim_search_bar/anim_search_bar.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'WALLPAPER',
            style: h1,
          ),
          centerTitle: true,
          elevation: 0,
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons
                    .search, //coonvert the search icon to animated search bar which expands and collapseson tap
                color: blackgreyColor,
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.transparent,
            labelColor: pinkcolor,
            unselectedLabelColor: greyColor,
            tabs: [
              Text(
                'TODAY',
                style: links,
              ),
              Text(
                'POPULAR',
                style: links,
              ),
              Text(
                'OLDIES',
                style: links,
              ),
            ],
          ),
        ),
        body: GetBuilder<HomeController>(
          init: HomeController(),
          initState: (_) {},
          builder: (controller) {
            return TabBarView(
              physics: const BouncingScrollPhysics(),
              children: [
                controller.state
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : SharedGridWiget(
                        wallpapers: controller.todaysList,
                      ),
                controller.state
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : SharedGridWiget(
                        wallpapers: controller.popularList,
                      ),
                controller.state
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : SharedGridWiget(
                        wallpapers: controller.oldiesList,
                      ),
              ],
            );
          },
        ),
      ),
    );
  }
}
