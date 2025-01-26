import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/property_model.dart';
import '../utils/custom_constants.dart';

class MainController extends GetxController {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  final GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();

  final PageController pageController = PageController(initialPage: 1),
      featuredController = PageController(viewportFraction: 0.8);

  RxInt navIndex = 1.obs;

  RxList selectedFilters = [].obs;
  RxList<PropertyModel> allProperties = <PropertyModel>[
        PropertyModel(
          label: 'House'.obs,
          isFav: false.obs,
          image:
              [Image.asset("${CustomConstants.houseImages}house (1).jpg")].obs,
          interior: [
            Image.asset("${CustomConstants.houseDetailImages}interior (1).jpg"),
            Image.asset("${CustomConstants.houseDetailImages}interior (2).jpg"),
            Image.asset("${CustomConstants.houseDetailImages}interior (3).jpg"),
            Image.asset("${CustomConstants.houseDetailImages}interior (4).jpg")
          ].obs,
          price: 10500000.0.obs,
          isNegotiable: true.obs,
          length: 50.0.obs,
          breath: 40.0.obs,
          street: 'Pokhara'.obs,
          city: 'Pokhara'.obs,
          province: 'Kaski'.obs,
          country: 'Nepal'.obs,
          type: CustomConstants.propertyTypeHouse.obs,
          typeDescription:
              '${CustomConstants.propertyType[CustomConstants.propertyTypeHouse]}'
                  .obs,
          details: 'very good'.obs,
          tags: ['Kitchen', 'Backyard', 'Furniture'].obs,
        ),
        PropertyModel(
            label: 'Apartment'.obs,
            isFav: false.obs,
            image: [
              Image.asset("${CustomConstants.apartmentImages}apartment (1).jpg")
            ].obs,
            interior: [
              Image.asset(
                  "${CustomConstants.apartmentDetailImages}interior (1).jpg")
            ].obs,
            price: 13000000.0.obs,
            isNegotiable: false.obs,
            length: 70.0.obs,
            breath: 50.0.obs,
            street: 'Pokhara'.obs,
            city: 'Pokhara'.obs,
            province: 'Kaski'.obs,
            country: 'Nepal'.obs,
            type: CustomConstants.propertyTypeApartment.obs,
            typeDescription:
                '${CustomConstants.propertyType[CustomConstants.propertyTypeApartment]}'
                    .obs,
            tags: [
              'Kitchen',
              'Backyard',
              'Patio',
              'Diner',
              'Balcony',
              'Appliances',
              'Furniture'
            ].obs,
            details: 'very good'.obs),
        PropertyModel(
            label: 'House'.obs,
            isFav: false.obs,
            image: [Image.asset("${CustomConstants.houseImages}house (10).jpg")]
                .obs,
            interior: [
              Image.asset(
                  "${CustomConstants.houseDetailImages}interior (4).jpg")
            ].obs,
            price: 30000.0.obs,
            isNegotiable: false.obs,
            length: 50.0.obs,
            breath: 55.0.obs,
            street: 'Pokhara'.obs,
            city: 'Pokhara'.obs,
            province: 'Kaski'.obs,
            country: 'Nepal'.obs,
            type: CustomConstants.propertyTypeHouse.obs,
            typeDescription:
                '${CustomConstants.propertyType[CustomConstants.propertyTypeHouse]}'
                    .obs,
            tags: ['Kitchen', 'Diner', '2 Bedroom'].obs,
            details: 'very good'.obs),
        PropertyModel(
            label: 'Land'.obs,
            isFav: false.obs,
            image: [Image.asset("${CustomConstants.houseImages}house (7).jpg")]
                .obs,
            interior: [
              Image.asset(
                  "${CustomConstants.houseDetailImages}interior (4).jpg")
            ].obs,
            price: 8000000.0.obs,
            isNegotiable: true.obs,
            length: 70.0.obs,
            breath: 40.0.obs,
            street: 'Pokhara'.obs,
            city: 'Pokhara'.obs,
            province: 'Kaski'.obs,
            country: 'Nepal'.obs,
            type: CustomConstants.propertyTypeLand.obs,
            typeDescription:
                '${CustomConstants.propertyType[CustomConstants.propertyTypeLand]}'
                    .obs,
            tags: ['Backyard', 'Plotted', 'DriveWay'].obs,
            details: 'very good'.obs),
      ].obs,
      sortedProperties = <PropertyModel>[].obs,
      favoriteProperties = <PropertyModel>[].obs;
}
