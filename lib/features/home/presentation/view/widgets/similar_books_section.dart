import 'package:bookly_app/features/home/presentation/view/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: Text(
            'You can also like',
            style: Styles.textTitle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
