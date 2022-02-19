// to convert the response into non nullable object

import 'package:advanced_flutter/data/responses/responses.dart';
import 'package:advanced_flutter/domain/model.dart';
import 'package:advanced_flutter/app/extensions.dart';
import 'package:advanced_flutter/app/constant.dart';

extension CustomerResponseMapper on CustomerResponse? {
  Customers toDomain() {
    return Customers(this?.id?.orEmpty() ?? Constant.empty, this?.name?.orEmpty() ?? Constant.empty, this?.numOfNotification?.orZero() ?? Constant.zero);
  }
}

extension ContactResponseMapper on ContactResponse? {
  Contacts toDomain() {
    return Contacts(this?.phoneNumber?.orEmpty() ?? Constant.empty, this?.link?.orEmpty() ?? Constant.empty, this?.email?.orEmpty() ?? Constant.empty);
  }
}

extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(this?.customer?.toDomain(), this?.contacts?.toDomain());
  }
}
