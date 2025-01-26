import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_jagga/utils/custom_constants.dart';

class PropertyModel extends GetxController {
  RxBool isFav = false.obs, inCart = false.obs, isNegotiable = false.obs;

  RxInt type = CustomConstants.propertyTypeOther.obs;
  RxDouble price = 0.0.obs, length = 0.0.obs, breath = 0.0.obs;

  RxList<Image> image, interior;
  RxList tags = [].obs;

  RxString label = ''.obs,
      street = ''.obs,
      city = ''.obs,
      province = ''.obs,
      country = ''.obs,
      typeDescription =
          '${CustomConstants.propertyType[CustomConstants.propertyTypeOther]}'
              .obs,
      details = ''.obs;

  PropertyModel({
    required this.label,
    required this.isFav,
    required this.image,
    required this.interior,
    required this.price,
    required this.isNegotiable,
    required this.length,
    required this.breath,
    required this.type,
    required this.typeDescription,
    required this.street,
    required this.city,
    required this.province,
    required this.country,
    required this.details,
    required this.tags,
  });
}
