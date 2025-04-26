import 'package:bookly_app/features/home/presentation/view/widgets/featured_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const FeaturedBooksListView(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: const Text(
              'Best Seller',
              style: Styles.textTitle18,
            ),
          ),
          BestSellerItem(),
        ],
      ),
    );
  }
}

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.8 / 4,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
           Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 100.w,
                    child: const Text(
                      'Harry Potter and the Goblet of Fire FireFireFireFireFireFireFireFireFireFireFireFireFireFireFireFireFireFireFireFireFireFireFireFireFireFireFireFireFireFireFire',
                      style: Styles.textTitle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
