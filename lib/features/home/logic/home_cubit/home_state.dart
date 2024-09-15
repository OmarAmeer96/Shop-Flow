import 'package:freezed_annotation/freezed_annotation.dart';
part 'products_state.freezed.dart';

@freezed
class HomeState<T> with _$ProductsState<T> {
  const factory HomeState.initial() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.productsFetched(T data) = ProductsFetched<T>;
  const factory HomeState.successAdd(T data) = SuccessAdd<T>;
  const factory HomeState.successUpdate(T data) = SuccessUpdate<T>;
  const factory HomeState.successDelete(T data) = SuccessDelete<T>;
  const factory HomeState.error({required String error}) = Error;
}
