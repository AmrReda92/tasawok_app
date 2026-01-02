import 'package:dartz/dartz.dart';
import 'package:practise_three/core/errors/failure.dart';
import 'package:practise_three/core/app_const/product_model.dart';

abstract class ProductRepo{

  Future<Either<Failure,List<ProductModel>>> getProductsByCategory (String categoryName);
}