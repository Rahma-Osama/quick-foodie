import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quick_foodie/core/utils/app_colors.dart';
import 'package:quick_foodie/core/utils/assets.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final introKey = GlobalKey<IntroductionScreenState>();
    return IntroductionScreen(
      baseBtnStyle:
          ButtonStyle(overlayColor: MaterialStatePropertyAll(Colors.grey[200])),
      key: introKey,
      pages: [
        customPageViewModel(
            title: 'Select From Our Best Menu',
            body: 'Pick your food from our menu \nMore than 35 times',
            image: AssetData.onBoarding1),
        customPageViewModel(
            title: 'Easy and Online Payment',
            body: 'You can pay cash on delivery and card payment is available',
            image: AssetData.onBoarding2),
        customPageViewModel(
            title: 'Quick Delivery at Your Doorstep',
            body: 'Deliver your food at your Doorstep',
            image: AssetData.onBoarding3),
      ],
      showNextButton: true,
      next: const Text("Next", style: TextStyle(color: AppColors.mainRed)),
      showDoneButton: true,
      done: const Text("Done", style: TextStyle(color: AppColors.mainRed)),
      onDone: () {},
    );
  }
}

customPageViewModel({required title, required body, required image}) {
  return PageViewModel(
      decoration: const PageDecoration(imageFlex: 3),
      title: title,
      body: body,
      image: Padding(
        padding: const EdgeInsets.only(top :40),
        child: Image.asset(image),
      ));
}
