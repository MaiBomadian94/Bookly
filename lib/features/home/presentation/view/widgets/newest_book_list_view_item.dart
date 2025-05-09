import 'package:bookly_app/core/routing/app_routes.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating_widget.dart';
import 'featured_list_view_item_image.dart';

class NewestBookListViewItem extends StatelessWidget {
  const NewestBookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.booksDetailsView);
      },
      child: SizedBox(
        height: 120.h,
        child: Row(
          children: [
            FeaturedListViewItemImage(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??'',
            ),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150.w,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textTitle20
                          .copyWith(fontFamily: kGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 3.h),
                    child: Text(
                      bookModel.volumeInfo.authors?[0]?? bookModel.volumeInfo.authors?[1]??'',
                      style: Styles.textTitle14,
                      maxLines: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: Styles.textTitle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRatingWidget(
                        ratingCount: 0,
                        ratingAvg: 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
