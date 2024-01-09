import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class SelectedPlanPage extends StatefulWidget {
  const SelectedPlanPage({super.key});

  @override
  State<SelectedPlanPage> createState() => _SelectedPlanPageState();
}

class _SelectedPlanPageState extends State<SelectedPlanPage> {
  bool mProperties = true;
  bool mShifts = true;
  bool mCheckpoints = true;
  bool mGuards = true;
  bool mMessenger = false;
  bool yProperties = true;
  bool yShifts = true;
  bool yCheckpoints = true;
  bool yGuards = true;
  bool yMessenger = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              // Tab(icon: Icon(Icons.directions_car)),
              Tab(
                // child: Column(children: [],)
                text: 'Monthly',
              ),
              Tab(
                text: 'Yearly',
              ),
            ],
          ),
          title: const Text('Select a plan'),
        ),
        body: TabBarView(
          children: [
            Container(
              height: 307.h,
              width: 259.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.change_circle,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Text(
                        'Silver',
                        style: AppFontStyle.mediumTextStyle(
                            AppColors.primaryColor, 22.sp),
                      ),
                    ],
                  ),
                  Center(
                    child: Text(
                      'Optimal  For 10+ team size and\n new startup',
                      style:
                          AppFontStyle.regularTextStyle(AppColors.black, 12.sp),
                    ),
                  ),
                  CheckboxListTile(
                    title: Text(
                      '5 Properties',
                      style:
                          AppFontStyle.regularTextStyle(AppColors.black, 14.sp),
                    ),
                    value: mProperties,
                    checkboxShape: const CircleBorder(),
                    checkColor: AppColors.white,
                    activeColor: AppColors.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        mProperties = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      '10 Shifts',
                      style:
                          AppFontStyle.regularTextStyle(AppColors.black, 14.sp),
                    ),
                    value: mShifts,
                    checkboxShape: const CircleBorder(),
                    activeColor: AppColors.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        mShifts = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      '10 Checkpoints',
                      style:
                          AppFontStyle.regularTextStyle(AppColors.black, 14.sp),
                    ),
                    value: mCheckpoints,
                    checkboxShape: const CircleBorder(),
                    activeColor: AppColors.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        mCheckpoints = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      '10 Guards',
                      style:
                          AppFontStyle.regularTextStyle(AppColors.black, 14.sp),
                    ),
                    value: mGuards,
                    checkboxShape: const CircleBorder(),
                    activeColor: AppColors.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        mGuards = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Messenger',
                      style:
                          AppFontStyle.regularTextStyle(AppColors.black, 14.sp),
                    ),
                    value: mMessenger,
                    checkboxShape: const CircleBorder(),
                    activeColor: AppColors.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        mMessenger = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 307.h,
              width: 259.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.change_circle,
                          color: AppColors.greenColor,
                        ),
                      ),
                      Text(
                        'Platinum',
                        style: AppFontStyle.mediumTextStyle(
                            AppColors.primaryColor, 22.sp),
                      ),
                    ],
                  ),
                  Text(
                    'Optimal  For 10+ team size and\n new startup',
                    style:
                        AppFontStyle.regularTextStyle(AppColors.black, 12.sp),
                  ),
                  CheckboxListTile(
                    title: Text('5 Properties',style: AppFontStyle.regularTextStyle(
                                    AppColors.black,14.sp),),
                    value: yProperties,
                    checkboxShape: const CircleBorder(),
                    activeColor: AppColors.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        yProperties = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      '10 Shifts',
                      style:
                          AppFontStyle.regularTextStyle(AppColors.black, 14.sp),
                    ),
                    value: yShifts,
                    checkboxShape: const CircleBorder(),
                    activeColor: AppColors.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        yShifts = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      '10 Checkpoints',
                      style:
                          AppFontStyle.regularTextStyle(AppColors.black, 14.sp),
                    ),
                    activeColor: AppColors.primaryColor,
                    value: yCheckpoints,
                    checkboxShape: const CircleBorder(),
                    onChanged: (value) {
                      setState(() {
                        yCheckpoints = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      '10 Guards',
                      style:
                          AppFontStyle.regularTextStyle(AppColors.black, 14.sp),
                    ),
                    value: yGuards,
                    checkboxShape: const CircleBorder(),
                    activeColor: AppColors.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        yGuards = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Messenger',
                      style:
                          AppFontStyle.regularTextStyle(AppColors.black, 14.sp),
                    ),
                    activeColor: AppColors.primaryColor,
                    value: yMessenger,
                    checkboxShape: const CircleBorder(),
                    onChanged: (value) {
                      setState(() {
                        yMessenger = value!;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
