import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fruit_hub_dashboard/core/errors/failures.dart';

abstract class ImagesRepo 
{
  Future<Either<Failure, String>> uploadImage(File image);
}