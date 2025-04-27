import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/featured_list_view_item_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0.w),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .16),
            child: const FeaturedListViewItemImage(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 35.h, bottom: 6.h),
            child: Text(
              'The Jungle Book',
              style: Styles.textTitle30.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Rudyard Kipling',
            style: Styles.textTitle18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              color: Colors.white.withOpacity(.7),
            ),
          ),
        ],
      ),
    );
  }
}
