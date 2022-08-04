import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaperapp/controller/home_controller.dart';
import 'package:wallpaperapp/model/search.dart';
import 'package:wallpaperapp/view/utils/helpers/colors_helper.dart';
import 'package:wallpaperapp/view/utils/helpers/style_helper.dart';
import 'package:wallpaperapp/view/utils/shared/shared_grid_wiget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController textController = TextEditingController();
  bool searchButtonClicked = false;
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    controller.getSearches();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: searchButtonClicked == false
              ? const Text(
                  'WALLPAPER',
                  style: h1,
                )
              : Container(
                  margin: const EdgeInsets.only(top: 12, left: 14, right: 17),
                  height: 40,
                  child: Autocomplete<Search>(
                      optionsBuilder: (textEditingValue) {
                        return controller.searchList
                            .where((Search search) => search.name
                                .toLowerCase()
                                .startsWith(
                                    textEditingValue.text.toLowerCase()))
                            .toList();
                      },
                      displayStringForOption: (Search search) => search.name,
                      fieldViewBuilder: (BuildContext context,
                          TextEditingController fieldTextEditingController,
                          FocusNode fieldFocusNode,
                          VoidCallback onFieldSubmitted) {
                        return TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                          controller: fieldTextEditingController,
                          focusNode: fieldFocusNode,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        );
                      },
                      optionsViewBuilder: (BuildContext context,
                          AutocompleteOnSelected<Search> onSelected,
                          Iterable<Search> options) {
                        return Align(
                            alignment: Alignment.topLeft,
                            child: Material(
                                child: Container(
                              width: 310,
                              color: Colors.white,
                              child: ListView.builder(
                                shrinkWrap: true,
                                padding: const EdgeInsets.all(10.0),
                                itemCount: options.length,
                                itemBuilder: (BuildContext context, int index) {
                                  final Search option =
                                      options.elementAt(index);

                                  return GestureDetector(
                                    onTap: () {
                                      onSelected(option);
                                    },
                                    child: ListTile(
                                      title: Text(option.name,
                                          style: const TextStyle(
                                              color: Colors.black)),
                                    ),
                                  );
                                },
                              ),
                            )));
                      }),
                ),
          centerTitle: true,
          elevation: 0,
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            searchButtonClicked == false
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        searchButtonClicked = true;
                      });
                    },
                    icon: const Icon(
                      Icons
                          .search, //coonvert the search icon to animated search bar which expands and collapseson tap
                      color: blackgreyColor,
                    ),
                  )
                : Container(),
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
