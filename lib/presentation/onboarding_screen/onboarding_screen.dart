import 'package:flutter/material.dart';
import 'package:sgt/presentation/onboarding_screen/widgets/build_pages.dart';
import 'package:sgt/presentation/authentication_screen/sign_in_screen.dart';
import 'package:sgt/utils/const.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../home.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pagecontroller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    pagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 150),
        child: PageView(
          controller: pagecontroller,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          children: const [
            BuildPages(
                imageUrl: 'assets/onboarding_img1.png',
                iconImage: 'assets/search.png',
                smallText: 'Geolocation',
                bigText: 'DEMO',
                descriptionText:
                    'Find trusted security guard in your own neighborhood to protect whatever you want'),
            BuildPages(
                imageUrl: 'assets/onboarding_img2.png',
                iconImage: 'assets/calendar.png',
                smallText: 'Availability',
                bigText: 'DEMO',
                descriptionText:
                    'Determine the right time between you and the security guard with choices you cannot imagine before'),
            BuildPages(
                imageUrl: 'assets/onboarding_img3.png',
                iconImage: 'assets/shield.png',
                smallText: 'Security',
                bigText: 'DEMO',
                descriptionText:
                    'Enjoy the right security and trust to protect your family, business and valuable assets'),
          ],
        ),
      ),
      bottomSheet: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 150,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SmoothPageIndicator(
                  controller: pagecontroller,
                  count: 3,
                  onDotClicked: (index) => pagecontroller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  ),
                  effect: WormEffect(
                      dotHeight: 12,
                      dotWidth: 12,
                      spacing: 16,
                      dotColor: Colors.grey,
                      activeDotColor: primaryColor),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              isLastPage
                  ? InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen()));
                      },
                      child: const Center(
                          child: Text(
                        'Get Started',
                        style: TextStyle(fontSize: 25, color: Colors.grey),
                      )),
                    )
                  : InkWell(
                      onTap: () {
                        pagecontroller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                      child: const Center(
                        child: Text(
                          'Next',
                          style: TextStyle(fontSize: 25, color: Colors.grey),
                        ),
                      ),
                    )
            ],
          )),
    );
  }
}
