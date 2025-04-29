import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/assets_data.dart';

class FeaturedListViewItemImage extends StatelessWidget {
  const FeaturedListViewItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
