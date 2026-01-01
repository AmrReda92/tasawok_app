import 'package:dartz/dartz.dart';
import 'package:practise_three/core/errors/failure.dart';
import 'package:practise_three/features/home/data/models/product_model.dart';

abstract class ProductRepo{

  Future<Either<Failure,List<ProductModel>>> getProducts ();
}