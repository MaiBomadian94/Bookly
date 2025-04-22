import 'package:bookly_app/core/routing/app_routes.dart';
import 'package:bookly_app/core/routing/route_generator.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/splash/view/widgets/sliding_widget.dart';
import 'package:flutter/cupertino.dart';

class SplashBodyView extends StatefulWidget {
  const SplashBodyView({
    super.key,
  });

  @override
  State<SplashBodyView> createState() => _SplashBodyViewState();
}

class _SplashBodyViewState extends State<SplashBodyView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController; // values from 0 to 1
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }


  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
    //  slidingAnimation.addListener(() {}); // to make it updated
  }
 navigateToHome() {
    return Future.delayed(const Duration(seconds: 2),(){
      AppNavigator.push(AppRoutes.home);
    },);
  }

}
