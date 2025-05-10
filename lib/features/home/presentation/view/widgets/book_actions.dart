import 'package:bookly_app/core/utils/functions/custom_lunch_url.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/custom-button.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomBookButton(
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              bottomLeft: Radius.circular(12.r),
            ),
            buttonText: 'Free',
          ),
        ),
        Expanded(
          child: CustomBookButton(
            onPressed: () async {
              customLaunchUrl(context, bookModel.volumeInfo.previewLink);
            },
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12.r),
              bottomRight: Radius.circular(12.r),
            ),
            buttonText: 'Free Preview',
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
