

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_three/features/home/data/models/category_model.dart';
import 'package:practise_three/features/home/data/repos/home_repo.dart';
part 'get_categories_state.dart';

class GetCategoriesCubit extends Cubit<GetCategoriesState> {
  final HomeRepo homeRepo;
  GetCategoriesCubit(this.homeRepo) : super(GetCategoriesInitial());

  Future<void> getCategoriesName()async{
    emit(GetCategoriesLoading());
    
    final result = await homeRepo.getCategoryName();
    return result.fold(
        (failure){
          emit(GetCategoriesFailure(failure.errorMessage));
        },
        (product){
         emit(GetCategoriesSuccess(product));
        }
    );
  }
}
