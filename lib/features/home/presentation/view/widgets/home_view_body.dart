import 'package:bookly_app/features/home/presentation/view/widgets/featured_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';
import 'best_seller_list_view_item.dart';
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
          const BestSellerListViewItem(),
        ],
      ),
    );
  }
}

