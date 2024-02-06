// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/Property/property_creation/controller/address_detail_controller.dart';
import 'package:sgt_owner/shared/widgets/custom_textfield.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class AddressWidgetTab extends StatefulWidget {
  const AddressWidgetTab({
    super.key,
  });

  @override
  State<AddressWidgetTab> createState() => _AddressWidgetTabState();
}

class _AddressWidgetTabState extends State<AddressWidgetTab> {
  final addressDetailController = Get.put(AddressDetailController());
  // NewConfirmController pCTRL = Get.put(NewConfirmController());

  final _streetAddressFocus = FocusNode();
  final _postalCodeFocus = FocusNode();
  final _countryFocus = FocusNode();
  final _stateFocus = FocusNode();
  final _cityFocus = FocusNode();
  final _latitudeFocus = FocusNode();
  final _longitudeFocus = FocusNode();

  String? selectedCountry;
  String? selectedState;
  String? selectedCity;

  List<String> countries = ['USA', 'Canada', 'India'];
  Map<String, List<String>> states = {
    'USA': ['New York', 'California', 'Texas'],
    'Canada': ['Ontario', 'Quebec', 'British Columbia'],
    'India': ['Maharashtra', 'Karnataka', 'Tamil Nadu'],
  };
  Map<String, List<String>> cities = {
    'New York': ['New York City', 'Buffalo', 'Albany'],
    'California': ['Los Angeles', 'San Francisco', 'San Diego'],
    'Texas': ['Houston', 'Austin', 'Dallas'],
    'Ontario': ['Toronto', 'Ottawa', 'Hamilton'],
    'Quebec': ['Montreal', 'Quebec City', 'Sherbrooke'],
    'British Columbia': ['Vancouver', 'Victoria', 'Kelowna'],
    'Maharashtra': ['Mumbai', 'Pune', 'Nagpur'],
    'Karnataka': ['Bangalore', 'Mysore', 'Hubli'],
    'Tamil Nadu': ['Chennai', 'Coimbatore', 'Madurai'],
  };

  @override
  void dispose() {
    super.dispose();
    _streetAddressFocus.dispose();
    _postalCodeFocus.dispose();
    _countryFocus.dispose();
    _stateFocus.dispose();
    _cityFocus.dispose();
    _latitudeFocus.dispose();
    _longitudeFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Center(
              child: Container(
                width: Get.width - 32.w,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(6.r)),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.disableColor.withAlpha(50),
                        blurRadius: 1.0,
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    // AddProfileImage(imgController: imgController),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Property Location',
                            style: AppFontStyle.semiboldTextStyle(
                                AppColors.textColor, 16.sp),
                          ),
                          Row(
                            children: [
                              Text(
                                'Auto Detect',
                                style: AppFontStyle.mediumTextStyle(
                                    AppColors.primaryColor, 12.sp),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              GestureDetector(
                                onTap: () {
                                  // GoogleMap(
                                  //   mapType: MapType.normal,
                                  //   zoomControlsEnabled: true,
                                  //   initialCameraPosition: CameraPosition(
                                  //       target: LatLng(23.5312394, 87.2177727),
                                  //       zoom: 14),
                                  //   onMapCreated:
                                  //       (GoogleMapController controller) {
                                  //     _controller.complete(controller);
                                  //   },
                                  //   markers: Set<Marker>.of(markers),
                                  // );
                                },
                                child: Icon(
                                  Icons.my_location,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                      child: Form(
                        key: addressDetailController.streetAddressFormKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: SignUpTextField(
                          controller:
                              addressDetailController.streetAddressController,
                          label: RichText(
                              text: TextSpan(
                                  text: 'Street Address',
                                  style: AppFontStyle.lightTextStyle(
                                      AppColors.black, 14.sp),
                                  children: const [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ))
                              ])),
                          maxWords: 64,
                          hintText: "Enter Or Select Location Via Map",
                          keyboardType: TextInputType.text,
                          focusNode: _streetAddressFocus,
                          onSaved: (value) {
                            addressDetailController.streetAddress = value!;
                          },
                          validator: (value) {
                            return addressDetailController
                                .validateStreetAddress(value!);
                          },
                          onTapOutside: (event) {
                            FocusScope.of(context).unfocus();
                          },
                          onFieldSubmitted: (value) {
                            FocusScope.of(context)
                                .requestFocus(_postalCodeFocus);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                      child: Form(
                        key: addressDetailController.postalCodeFormKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: AppTextField(
                          controller:
                              addressDetailController.postalCodeController,
                          label: RichText(
                              text: TextSpan(
                                  text: 'Postal Code',
                                  style: AppFontStyle.lightTextStyle(
                                      AppColors.black, 14.sp),
                                  children: [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ))
                              ])),
                          hintText: "Enter Postal Code",
                          keyboardType: TextInputType.number,
                          focusNode: _postalCodeFocus,
                          onSaved: (value) {
                            addressDetailController.postalCode = value!;
                          },
                          validator: (value) {
                            return addressDetailController
                                .validatePostalCode(value!);
                          },
                          onFieldSubmitted: (value) {
                            FocusScope.of(context).requestFocus(_countryFocus);
                          },
                          onTapOutside: (event) {
                            FocusScope.of(context).unfocus();
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        key: addressDetailController.selectCountryFormKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: buildDropdown('Country', countries, (value) {
                          setState(() {
                            selectedCountry = value;
                            selectedState = null;
                            selectedCity = null;
                          });
                        }, _countryFocus),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        key: addressDetailController.selectStateFormKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: selectedCountry != null
                            ? buildDropdown('State', states[selectedCountry]!,
                                (value) {
                                setState(() {
                                  selectedState = value;
                                  selectedCity = null;
                                });
                              }, _stateFocus)
                            : buildDropdown('State', [], (value) {
                                setState(() {
                                  selectedState = value;
                                  selectedCity = null;
                                });
                              }, _stateFocus),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        key: addressDetailController.selectCityFormKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: selectedState != null
                            ? buildDropdown('City', cities[selectedState]!,
                                (value) {
                                setState(() {
                                  selectedCity = value;
                                });
                              }, _cityFocus)
                            : buildDropdown('City', [], (value) {
                                setState(() {
                                  selectedCity = value;
                                });
                              }, _cityFocus),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                      child: Form(
                        key: addressDetailController.latitudeFormKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: AppTextField(
                          controller:
                              addressDetailController.latitudeController,
                          label: RichText(
                              text: TextSpan(
                                  text: 'Latitude',
                                  style: AppFontStyle.lightTextStyle(
                                      AppColors.black, 14.sp),
                                  children: [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ))
                              ])),
                          hintText: "Enter Latitude",
                          keyboardType: TextInputType.number,
                          focusNode: _latitudeFocus,
                          onSaved: (value) {
                            addressDetailController.latitude = value!;
                          },
                          validator: (value) {
                            return addressDetailController
                                .validateLatitude(value!);
                          },
                          onFieldSubmitted: (value) {
                            FocusScope.of(context)
                                .requestFocus(_longitudeFocus);
                          },
                          onTapOutside: (event) {
                            FocusScope.of(context).unfocus();
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                      child: Form(
                        key: addressDetailController.longitudeFormKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: AppTextField(
                          controller:
                              addressDetailController.longitudeController,
                          label: RichText(
                              text: TextSpan(
                                  text: 'Longitude',
                                  style: AppFontStyle.lightTextStyle(
                                      AppColors.black, 14.sp),
                                  children: [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ))
                              ])),
                          hintText: "Enter Longitude",
                          keyboardType: TextInputType.number,
                          focusNode: _longitudeFocus,
                          onSaved: (value) {
                            addressDetailController.longitude = value!;
                          },
                          validator: (value) {
                            return addressDetailController
                                .validateLongitude(value!);
                          },
                          onFieldSubmitted: (value) {
                            FocusScope.of(context)
                                .requestFocus(_longitudeFocus);
                          },
                          onTapOutside: (event) {
                            FocusScope.of(context).unfocus();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
      ],
    );
  }

  Widget buildDropdown(String label, List<String> items, onChanged, focusNode) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField(
          value: items.contains(selectedCountry) ? selectedCountry : null,
          onChanged: onChanged,
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          decoration: InputDecoration(
            labelText: label,
            border: OutlineInputBorder(),
          ),
          focusNode: focusNode,
        ),
      ],
    );
  }
}
