import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_dashboard/core/helper_functions/build_error_bar.dart';
import 'package:fruit_hub_dashboard/core/widgets/custom_progress_hud.dart';
import 'package:fruit_hub_dashboard/features/add_product/presentation/manger/cubit/add_product_cubit.dart';

import 'add_product_view_body.dart';

class AddProductsViewBodyBlocBuilder extends StatelessWidget {
  const AddProductsViewBodyBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductCubit, AddProductState>(
      listener: (context, state) {
        if (state is AddProductSucceess) {
          buildBar(context, 'Product added successfully');
        }
        if (state is AddProductFailure) {
          buildBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is AddProductLoading,
          child: const AddProductViewBody(),
        );
      },
    );
  }
}
