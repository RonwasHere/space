import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/onboarding_item.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: [
                OnboardingItem(
                    imageUrl: 'assets/image_onboarding1.png',
                    title: 'Buy Furniture Easily',
                    subtitle:
                        'Aliqua id fugiat nostrud irure ex duis ea\n quis id quis ad et. Sunt qui esse'),
                OnboardingItem(
                    imageUrl: 'assets/image_onboarding2.png',
                    title: 'Fast Delivery',
                    subtitle:
                        'Aliqua id fugiat nostrud irure ex duis ea\n quis id quis ad et. Sunt qui esse'),
                OnboardingItem(
                    imageUrl: 'assets/image_onboarding3.png',
                    title: 'Best Price',
                    subtitle:
                        'Aliqua id fugiat nostrud irure ex duis ea\n quis id quis ad et. Sunt qui esse'),
              ],
              options: CarouselOptions(
                height: double.infinity,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                initialPage: currentIndex,
                onPageChanged: (index, _) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              carouselController: controller,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    //*ini untuk loncat dr hlmn 0 ke 2 (hlmn terakir tutorial)
                    controller.animateToPage(2); 
                    //* Navigator.pushNamed(context, '/sign-in'); u/lsg loncat ke hlmn sign-in
                    
                  },
                  child: Text(
                    'SKIP',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
                //*untuk indikator antara skip dan next
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 0 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 1 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 2 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    if (currentIndex == 2) {
                      Navigator.pushNamed(context, '/sign-in');
                    } else {
                      controller.nextPage();
                    }
                  },
                  child: Text(
                    'NEXT',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 29),
        ],
      ),
    );
  }
}
