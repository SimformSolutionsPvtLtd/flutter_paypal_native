import 'dart:convert';

import 'package:flutter_paypal_native/models/custom/currency_code.dart';

class FPayPalPurchaseUnit {
  FPayPalCurrencyCode currencyCode;
  double amount;
  String? referenceId;
  String? payeeEmailAddress;
  String? payeeMerchantId;

  FPayPalPurchaseUnit({
    this.currencyCode = FPayPalCurrencyCode.usd,
    required this.amount,

    ///please provide reference id,
    ///if ordering more than 2 products
    this.referenceId,
    this.payeeEmailAddress,
    this.payeeMerchantId,
  });

  ///get amount in currency format 10.00, 50000.00
  String get amountStr {
    return amount.toStringAsFixed(2);
  }

  ///get data in map format
  Map<String, String?> get toMap {
    return {
      //try to auto generate string
      // ?? StrHelper.getRandomString(16)
      "referenceId": referenceId,
      "payeeEmailAddress": payeeEmailAddress,
      "payeeMerchantId": payeeMerchantId,
      "price": amountStr,
      "currency": FPayPalCurrencyCodeHelper.convertFromEnumToString(
        currencyCode,
      ),
    };
  }

  ///get data in json string format
  String get toJson {
    return json.encode(toMap);
  }

  //convert a list to a json
  static String convertListToJson(List<FPayPalPurchaseUnit> items) {
    return jsonEncode(
      items.map((e) => e.toMap).toList(),
    );
  }
}
