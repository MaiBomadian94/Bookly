import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';
import 'book_actions.dart';
import 'book_rating_widget.dart';
import 'featured_list_view_item_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: width * .17),
        //   child: const FeaturedListViewItemImage(),
        // ),
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
        Padding(
          padding: EdgeInsets.only(top: 18.h, bottom: 37.h),
          child: const BookRatingWidget(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        const BookActions(),
      ],
    );
  }
}
