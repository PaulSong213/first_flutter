import 'package:flutter/material.dart';
import 'local_widgets/landing_app_bar.dart';
import 'local_widgets/landing_banner.dart';
import 'local_widgets/landing_menu.dart';
import 'local_widgets/landing_promo.dart';
import 'local_widgets/landing_best_sellers.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LandingAppBar(),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              LandingBanner(),
              LandingMenu(),
              LandingPromo(),
              LandingBestSellers(),
            ],
          );
        },
      ),
    );
  }
}
