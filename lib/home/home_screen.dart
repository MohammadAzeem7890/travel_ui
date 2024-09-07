import 'package:flutter/material.dart';
import 'package:travel_app_ui/global_widgets/app_standard_gap.dart';
import 'package:travel_app_ui/global_widgets/primary_button.dart';
import 'package:travel_app_ui/global_widgets/primary_text.dart';
import 'package:travel_app_ui/home/home_widgets/category_list_view.dart';
import 'package:travel_app_ui/home/home_widgets/destination_grid_view.dart';
import 'package:travel_app_ui/home/home_widgets/destinations_banner.dart';
import 'package:travel_app_ui/home/home_widgets/home_app_bar.dart';
import 'package:travel_app_ui/home/home_widgets/home_banner.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.06),
          child: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: HomeAppBar(
              screenHeight: screenHeight,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: HomeBanner(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                ),
              ),
              AppStandardGap(screenHeight: screenHeight),
              CategoryListView(
                  screenHeight: screenHeight, screenWidth: screenWidth),
              AppStandardGap(screenHeight: screenHeight),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 2,
                      child: SizedBox(
                        width: screenWidth * 0.5,
                        child: PrimaryText(
                          "What Destinations do you like to go?",
                          fontWeight: FontWeight.bold,
                          fontSize: screenHeight * 0.023,
                          maxLines: 2,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: SizedBox(
                        height: 38,
                        child: PrimaryButton(
                            text: "See More",
                            fontWeight: FontWeight.w700,
                            textSize: screenWidth * 0.04,
                            onPressed: () {
                              // todo
                            }),
                      ),
                    ),
                  ],
                ),
              ),
              AppStandardGap(screenHeight: screenHeight),
              DestinationsBanner(screenHeight: screenHeight),
              AppStandardGap(screenHeight: screenHeight),
              DestinationGridView(screenHeight: screenHeight),
              AppStandardGap(screenHeight: screenHeight),
            ],
          ),
        ),
      ),
    );
  }
}
