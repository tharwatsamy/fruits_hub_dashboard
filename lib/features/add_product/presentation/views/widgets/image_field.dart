import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ImageField extends StatefulWidget {
  const ImageField({super.key});

  @override
  State<ImageField> createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: GestureDetector(
        onTap: () async {
          isLoading = true;
          setState(() {});
          try {
            final ImagePicker picker = ImagePicker();

            final XFile? image =
                await picker.pickImage(source: ImageSource.gallery);
          } catch (e) {
            isLoading = false;
            setState(() {});
          }
          isLoading = false;
          setState(() {});
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16,
              ),
              border: Border.all(
                color: Colors.grey,
              )),
          child: const Icon(
            Icons.image_outlined,
            size: 180,
          ),
        ),
      ),
    );
  }
}
