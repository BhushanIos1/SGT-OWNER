// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/company_details/controller/company_details_controller.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/shared/widgets/custom_textfield.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class CompanyDetailsPage extends StatefulWidget {
  const CompanyDetailsPage({super.key});

  @override
  State<CompanyDetailsPage> createState() => _CompanyDetailsPageState();
}

class _CompanyDetailsPageState extends State<CompanyDetailsPage> {
  final companyDetailsController = Get.put(CompanyDetailsController());
  // PasswordController pCTRL = Get.put(PasswordController());
  final _companyNameFocus = FocusNode();
  final _bsisNumberFocus = FocusNode();
  final _federalNumberFocus = FocusNode();
  final _companyAddressFocus = FocusNode();
  final _postalCodeFocus = FocusNode();
  final _countryFocus = FocusNode();
  final _stateFocus = FocusNode();
  final _cityFocus = FocusNode();

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
    _companyNameFocus.dispose();
    _bsisNumberFocus.dispose();
    _federalNumberFocus.dispose();
    _companyAddressFocus.dispose();
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
        titleText: 'Company Details',
        isLeading: false,
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                        child: Form(
                          key: companyDetailsController.companyNameFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: SignUpTextField(
                            controller:
                                companyDetailsController.companyNameController,
                            label: RichText(
                                text: TextSpan(
                                    text: 'Company Name',
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
                            hintText: "Enter Company Name",
                            keyboardType: TextInputType.text,
                            focusNode: _companyNameFocus,
                            onSaved: (value) {
                              companyDetailsController.companyName = value!;
                            },
                            validator: (value) {
                              return companyDetailsController
                                  .validateCompanyName(value!);
                            },
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(_bsisNumberFocus);
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 2.h),
                        child: Form(
                          key: companyDetailsController.bsisNumberFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: AppTextField(
                            controller:
                                companyDetailsController.bsisNumberController,
                            label: RichText(
                                text: TextSpan(
                                    text: 'BSIS Number',
                                    style: AppFontStyle.lightTextStyle(
                                        AppColors.black, 14.sp),
                                    children: [
                                  TextSpan(
                                      text: ' (optional)',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ))
                                ])),
                            hintText: "Enter BSIS Number",
                            keyboardType: TextInputType.number,
                            focusNode: _bsisNumberFocus,
                            onSaved: (value) {
                              companyDetailsController.bsisNumber = value!;
                            },
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(_federalNumberFocus);
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                        child: Form(
                          key: companyDetailsController.federalNumberFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: AppTextField(
                            controller: companyDetailsController
                                .federalNumberController,
                            label: RichText(
                                text: TextSpan(
                                    text: 'Federal Number',
                                    style: AppFontStyle.lightTextStyle(
                                        AppColors.black, 14.sp),
                                    children: [
                                  TextSpan(
                                      text: ' (optional)',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ))
                                ])),
                            hintText: "Enter Federal Number",
                            keyboardType: TextInputType.number,
                            focusNode: _federalNumberFocus,
                            onSaved: (value) {
                              companyDetailsController.federalNumber = value!;
                            },
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(_companyAddressFocus);
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 12.h),
                        child: Form(
                          key: companyDetailsController.companyAddressFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: SignUpTextField(
                            controller: companyDetailsController
                                .companyAddressController,
                            label: RichText(
                                text: TextSpan(
                                    text: 'Company Address',
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
                            focusNode: _companyAddressFocus,
                            onSaved: (value) {
                              companyDetailsController.companyAddress = value!;
                            },
                            validator: (value) {
                              return companyDetailsController
                                  .validateCompanyAddress(value!);
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
                          key: companyDetailsController.postalCodeFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: AppTextField(
                            controller:
                                companyDetailsController.postalCodeController,
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
                              companyDetailsController.postalCode = value!;
                            },
                            validator: (value) {
                              return companyDetailsController
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
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                          key: companyDetailsController.selectCountryFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: buildDropdown('Country', countries, (value) {
                            setState(() {
                              selectedCountry = value;
                              selectedState = null;
                              selectedCity = null;
                            });
                          },'Select Country'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                          key: companyDetailsController.selectStateFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: selectedCountry != null
                              ? buildDropdown('State', states[selectedCountry]!,
                                  (value) {
                                  setState(() {
                                    selectedState = value;
                                    selectedCity = null;
                                  });
                                },'Select State')
                              : buildDropdown('State', [], (value) {
                                  setState(() {
                                    selectedState = value;
                                    selectedCity = null;
                                  });
                                },'Select State'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                          key: companyDetailsController.selectCityFormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: selectedState != null
                              ? buildDropdown('City', cities[selectedState]!,
                                  (value) {
                                  setState(() {
                                    selectedCity = value;
                                  });
                                },'Select City')
                              : buildDropdown('City', [], (value) {
                                  setState(() {
                                    selectedCity = value;
                                  });
                                },'Select City'),
                        ),
                      ),
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
                        companyDetailsController.checkValidFormField();
                      },
                      backgoundColor:
                          // companyDetailsController.btnEnabled.value
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

  Widget buildDropdown(String label, List<String> items, onChanged,hintText) {
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
                                filled: true,
                                fillColor: Colors.white,
                                hintText: hintText,
                                hintStyle: AppFontStyle.regularTextStyle(
                                    AppColors.hintColor, 12.sp),
                                errorStyle: AppFontStyle.regularTextStyle(
                                  AppColors.redColor,
                                  10.sp,
                                ),
                                label: RichText(
                                  text: TextSpan(
                                      text: label,
                                      style: AppFontStyle.lightTextStyle(
                                          AppColors.black, 14.sp),
                                      children: [
                                    TextSpan(
                                        text: ' *',
                                        style: TextStyle(
                                          color: Colors.red,
                                        ))
                                  ])),
                                labelStyle: AppFontStyle.regularTextStyle(
                                    AppColors.black, 12.sp),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 19.w, vertical: 5.h),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: const BorderSide(
                                      width: 1, color: AppColors.disableColor),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: const BorderSide(
                                      width: 1, color: AppColors.disableColor),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: const BorderSide(
                                    color: AppColors.primaryColor,
                                    width: 1.0,
                                  ),
                                ),
                              ),
        ),
      ],
    );
  }
}
