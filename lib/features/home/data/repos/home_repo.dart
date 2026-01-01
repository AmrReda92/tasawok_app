
import 'package:dartz/dartz.dart';
import 'package:practise_three/features/home/data/models/category_model.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<ProductModel>>> getCategoryName ();
}