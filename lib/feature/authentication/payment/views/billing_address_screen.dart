// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/company_details/controller/company_details_controller.dart';
import 'package:sgt_owner/feature/authentication/payment/controller/billing_address_controller.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/shared/widgets/custom_textfield.dart';
import 'package:sgt_owner/shared/widgets/dashed.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class BillingAddressPage extends StatefulWidget {
  const BillingAddressPage({super.key});

  @override
  State<BillingAddressPage> createState() => _BillingAddressPageState();
}

class _BillingAddressPageState extends State<BillingAddressPage> {
  final billingAddressController = Get.put(BillingAddressController());
  // PasswordController pCTRL = Get.put(PasswordController());
  final _streetAddressFocus = FocusNode();
  final _postalCodeFocus = FocusNode();
  final _countryFocus = FocusNode();
  final _stateFocus = FocusNode();
  final _cityFocus = FocusNode();

  bool? checkBox = false;

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        titleText: 'Billing address',
        isLeading: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(children: [
              SizedBox(
                height: 16.h,
              ),
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Selected Plan',
                              style: AppFontStyle.boldTextStyle(
                                  AppColors.black, 17.sp),
                            ),
                            GestureDetector(
                              onTap: () => {Get.toNamed("/select_plan")},
                              child: Text(
                                'Change',
                                style: AppFontStyle.boldTextStyle(
                                    AppColors.primaryColor, 15.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Container(
                        // color: AppColors.primaryBackColor,
                        width: 327.w,
                        height: 54.h,
                        decoration: BoxDecoration(
                            color: AppColors.primaryBackColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.r)),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.disableColor.withAlpha(50),
                                blurRadius: 1.0,
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.change_circle,
                                    color: AppColors.primaryColor,
                                  ),
                                  Text(
                                    'Silver',
                                    style: AppFontStyle.mediumTextStyle(
                                        AppColors.black, 16.sp),
                                  ),
                                ],
                              ),
                              Text(
                                "\$25",
                                style: AppFontStyle.mediumTextStyle(
                                    AppColors.black, 16.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      const MySeparator(color: AppColors.disableColor),
                      CheckboxListTile(
                        title: Text(
                          'Same as company address',
                          style: AppFontStyle.regularTextStyle(
                              AppColors.grayColor, 14.sp),
                        ),
                        value: checkBox,
                        checkColor: AppColors.white,
                        activeColor: AppColors.primaryColor,
                        onChanged: (value) {
                          setState(() {
                            checkBox = value!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                        child: Form(
                          key: billingAddressController.streetAddressFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: SignUpTextField(
                            controller: billingAddressController
                                .streetAddressController,
                            label: RichText(
                                text: TextSpan(
                                    text: 'Street Address',
                                    style: AppFontStyle.lightTextStyle(
                                        AppColors.black, 14.sp),
                                    children: [
                                  TextSpan(
                                      text: ' *',
                                      style: TextStyle(
                                        color: Colors.red,
                                      ))
                                ])),
                            maxWords: 64,
                            hintText: "Enter Address",
                            keyboardType: TextInputType.text,
                            focusNode: _streetAddressFocus,
                            onSaved: (value) {
                              billingAddressController.streetAddress = value!;
                            },
                            validator: (value) {
                              return billingAddressController
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
                      Form(
                        key: billingAddressController.postalCodeFormKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: AppTextField(
                          controller:
                              billingAddressController.postalCodeController,
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
                            billingAddressController.postalCode = value!;
                          },
                          validator: (value) {
                            return billingAddressController
                                .validatePostalCode(value!);
                          },
                          onFieldSubmitted: (value) {
                            FocusScope.of(context)
                                .requestFocus(_postalCodeFocus);
                          },
                          onTapOutside: (event) {
                            FocusScope.of(context).unfocus();
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                        child: Form(
                          key: billingAddressController.selectCountryFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: buildDropdown('Country', countries, (value) {
                            setState(() {
                              selectedCountry = value;
                              selectedState = null;
                              selectedCity = null;
                            });
                          }),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                        child: Form(
                          key: billingAddressController.selectStateFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: selectedCountry != null
                              ? buildDropdown('State', states[selectedCountry]!,
                                  (value) {
                                  setState(() {
                                    selectedState = value;
                                    selectedCity = null;
                                  });
                                })
                              : buildDropdown('State', [], (value) {
                                  setState(() {
                                    selectedState = value;
                                    selectedCity = null;
                                  });
                                }),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                        child: Form(
                          key: billingAddressController.selectCityFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: selectedState != null
                              ? buildDropdown('City', cities[selectedState]!,
                                  (value) {
                                  setState(() {
                                    selectedCity = value;
                                  });
                                })
                              : buildDropdown('City', [], (value) {
                                  setState(() {
                                    selectedCity = value;
                                  });
                                }),
                        ),
                      ),
                      Text('Selected Country: $selectedCountry'),
                      Text('Selected State: $selectedState'),
                      Text('Selected City: $selectedCity'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Column(
                children: [
                  // Obx(() =>
                  AppButton(
                      onTaps: () {
                        billingAddressController.checkValidFormField();
                      },
                      backgoundColor:
                          // billingAddressController.btnEnabled.value
                          //         ?
                          AppColors.primaryColor,
                      // : AppColors.disableColor,
                      textColor: AppColors.white,
                      titleText: "Next"
                      // )
                      ),
                  SizedBox(
                    height: 38.h,
                  ),
                ],
              )
            ])
          ],
        ),
      ),
    );
  }

  Widget buildDropdown(String label, List<String> items, onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        DropdownButton(
          value: items.contains(selectedCountry) ? selectedCountry : null,
          // value: items.contains((selectedCountry) != null ? selectedCountry : (selectedState)!=null ? selectedState :(selectedCity)!=null ? selectedCity : null),
          items: items
              .map((item) => DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  ))
              .toList(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
