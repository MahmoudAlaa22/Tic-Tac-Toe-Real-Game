import 'package:equatable/equatable.dart';

class BaseResponse extends Equatable {
  final num? status; // 1 -> fail  ||  0 -> success
  final String? message;

  const BaseResponse({
    required this.status,
    required this.message,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) => BaseResponse(
        status: json["Status"],
        message: json["Message"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "Status": status,
        "Message": message,
      };

  @override
  List<Object?> get props => [status, message];
}
