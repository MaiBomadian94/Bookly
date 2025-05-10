import 'package:bookly_app/core/widgets/custom_error_msg.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/cubit.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/view/widgets/newest_book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchStates>(
      builder: (context, state) {
        if (state is SuccessSearchState) {
          return ListView.separated(
            itemBuilder: (context, index) {
              return NewestBookListViewItem(
                bookModel: state.books[index],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 12,
              );
            },
            itemCount: state.books.length,
          );
        } else if (state is FailureSearchState) {
          return CustomErrorMsg(errorMsg: state.errorMsg);
        } else if (state is LoadingSearchState) {
          return CustomLoadingIndicator();
        } else {
          return const Center(
            child: Text(
              'Search for books 🔍',
              style: Styles.textTitle18,
            ),
          );
        }
      },
    );
  }
}
