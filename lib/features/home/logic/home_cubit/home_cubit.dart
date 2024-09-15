import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_flow/features/home/data/repos/home_repo.dart';
import 'package:shop_flow/features/home/logic/home_cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _productsRepo;

  HomeCubit(this._productsRepo) : super(const HomeState.initial());

  void getAllProducts() async {
    // if (state is! ProductsFetched) {
    //   emit(const HomeState.loading());
    // }
    emit(const HomeState.loading());
    final response = await _productsRepo.getAllProducts();
    response.when(
      success: (productsResponse) {
        if (state is Success) {
          emit(HomeState.success(productsResponse));
        } else {
          emit(HomeState.success(productsResponse));
        }
      },
      failure: (error) {
        emit(
          HomeState.error(
            error: error.apiErrorModel.message ?? 'Something went wrong!',
          ),
        );
      },
    );
  }
}
