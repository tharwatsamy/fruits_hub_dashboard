import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboard/core/widgets/custom_text_field.dart';
import 'package:fruit_hub_dashboard/features/add_product/presentation/views/widgets/custom_check_box.dart';
import 'package:fruit_hub_dashboard/features/add_product/presentation/views/widgets/image_field.dart';
import 'package:fruit_hub_dashboard/features/add_product/presentation/views/widgets/is_featured_check_box.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const CustomTextFormField(
                hintText: 'Product Name',
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                hintText: 'Product Price',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                hintText: 'Product Code',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                hintText: 'Product Description',
                textInputType: TextInputType.text,
                maxLines: 5,
              ),
              const SizedBox(
                height: 16,
              ),
              IsFeaturedCheckBox(
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 16,
              ),
              ImageField(
                onFileChanged: (image) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
