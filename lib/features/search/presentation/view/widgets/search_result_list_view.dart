import 'package:flutter/cupertino.dart';

import '../../../../home/presentation/view/widgets/best_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const BestSellerListViewItem();
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 3,
        );
      },
      itemCount: 10,
    );
  }
}
