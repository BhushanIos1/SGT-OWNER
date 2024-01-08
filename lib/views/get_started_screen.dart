import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/service/app_exceptions.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/shared/widgets/custom_buttons.dart';
import 'package:sgt_owner/shared/widgets/custom_textfield.dart';
import 'package:sgt_owner/style/colors.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  final _controller = TextEditingController();
  final _newController = TextEditingController();
  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titleText: 'Get Started',
        isLeading: false,
      ),
      //backgroundColor: AppColors.primaryColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          AppButton(
            onTaps: () {},
            backgoundColor: AppColors.white,
            textColor: AppColors.redColor,
            titleText: 'Get Start',
            isIcon: true,
          ),
          SizedBox(
            height: 20,
          ),
          AppButton(
            onTaps: () {},
            backgoundColor: AppColors.primaryColor,
            textColor: AppColors.white,
            titleText: 'Sign Up',
            borderColor: AppColors.white,
            isIcon: false,
          ),
          SizedBox(
            height: 20,
          ),
          AppButton(
            onTaps: () {},
            backgoundColor: AppColors.disableColor,
            textColor: AppColors.white,
            titleText: 'Login',
            isIcon: false,
          ),
          // SizedBox(
          //   height: 20,
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: TextFormField(
          //     controller: _controller,
          //     decoration: InputDecoration(
          //       labelText: "Email",
          //       prefixIcon: Icon(Icons.email),
          //       errorText: _validate ? "\u24D8 Value Can't Be Empty" : null,
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(5.0),
          //         borderSide:
          //             const BorderSide(width: 1, color: AppColors.disableColor),
          //       ),
          //     ),
          //     keyboardType: TextInputType.emailAddress,

          //     //controller: controller.emailController,
          //     // onSaved: (value) {
          //     //   controller.email = value!;
          //     // },
          //     // validator: (value) {
          //     //   return controller.validateEmail(value!);
          //     // },
          //   ),
          // ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextButton(
              child: Text('Submit'),
              onPressed: () {
                // setState(() {
                //   _validate = _controller.text.isEmpty;
                // });
              Get.toNamed("/login");
              },
            ),
          )
        ]),
      ),
    );
  }
}
