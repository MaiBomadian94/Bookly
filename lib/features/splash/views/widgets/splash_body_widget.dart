import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/cupertino.dart';

class SplashBodyView extends StatelessWidget {
  const SplashBodyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 0.0, end: 1.0),
          duration: const Duration(seconds: 2),
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Transform.scale(
                scale: value,
                child: child,
              ),
            );
          },
          child: Image.asset(AssetsData.logo),
        ),
      ],
    );
  }
}
