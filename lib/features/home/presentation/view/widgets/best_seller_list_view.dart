import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return const BestSellerListViewItem();
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 3.h,
          );
        },
        itemCount: 10,
      ),
    );
  }
}
