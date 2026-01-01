import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit() : super(GetProductsInitial());
}
