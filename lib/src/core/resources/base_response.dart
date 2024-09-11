import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  final T? data;
  final String? error;

  const BaseResponse({this.data, this.error});

  factory BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BaseResponseToJson(this, toJsonT);
}

class DataFail<T> extends BaseResponse<T> {
  const DataFail(String error) : super(error: error);
}

class DataSuccess<T> extends BaseResponse<T> {
  const DataSuccess(T data) : super(data: data);
}
