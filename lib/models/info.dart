
import 'package:freezed_annotation/freezed_annotation.dart';

part 'info.freezed.dart';
part 'info.g.dart';

@freezed
class Info with _$Info {
  factory Info({
    @Default(20) int count,
    @Default(1) int pages,
    String? next,
    String? prev,
  }) = _Info;
	
  factory Info.fromJson(Map<String, dynamic> json) =>
			_$InfoFromJson(json);
}
