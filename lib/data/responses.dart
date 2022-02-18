import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

/// API response for authentication

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class CustomerResponse {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "numOfNotifications")
  int? numOfNotification;

  CustomerResponse(this.id, this.name, this.numOfNotification);
}

@JsonSerializable()
class ContactResponse {
  @JsonKey(name: "phoneNumber")
  String? phoneNumber;
  @JsonKey(name: "link")
  String? link;
  @JsonKey(name: "email")
  String? email;

  ContactResponse(this.phoneNumber, this.link, this.email);
}

@JsonSerializable()
class AuthenticationResponse extends BaseResponse {
  @JsonKey(name: "customer")
  CustomerResponse? customer;
  @JsonKey(name: "contacts")
  ContactResponse? contacts;

  AuthenticationResponse(this.customer, this.contacts);
  // From Json

  // To Json
}
