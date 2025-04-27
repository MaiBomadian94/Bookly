import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating_widget.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150.w,
                  child: Text(
                    'Harry Potter and the Goblet of Fire ',
                    style:
                        Styles.textTitle20.copyWith(fontFamily: kGtSectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.h),
                  child: const Text(
                    'J.K. Rowling',
                    style: Styles.textTitle14,
                    maxLines: 2,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19.99',
                      style: Styles.textTitle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const BookRatingWidget(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
