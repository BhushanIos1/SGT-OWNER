import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgt_owner/feature/Property/shift/controller/shift_controller.dart';


class CustomStepper extends StatefulWidget {
  const CustomStepper({super.key});

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  final createShiftController = Get.put(CreateShiftController()); 
  @override
  Widget build(BuildContext context) {
    return Obx(
        () => Stepper(
      type:StepperType.vertical,
      steps: buildStep(),
      currentStep: createShiftController.currentStep.value,
      onStepTapped: (index) {
            createShiftController.currentStep.value = index;
          },
      controlsBuilder: (BuildContext context, ControlsDetails details) {
        return Row(
          children: <Widget>[
            TextButton(
              onPressed: details.onStepContinue,
              child: const Text('NEXT'),
            ),
            TextButton(
              onPressed: details.onStepCancel,
              child: const Text('CANCEL'),
            ),
          ],
        );
      },
    ));
  }

List<Step> buildStep()
{
return [
    Step(
      title: const Text('Shift'),
      content: const Text('Content for Shift'),
      isActive: createShiftController.currentStep.value >= 0,
      state: createShiftController.currentStep.value >= 0 ? StepState.editing : StepState.complete,
    ),
    Step(
      title: const Text('Checkpoint'),
      content: const Text('Content for Checkpoint'),
      isActive: createShiftController.currentStep.value >= 1,
      state: createShiftController.currentStep.value >= 1 ? StepState.editing : StepState.complete,
    ),
    Step(
      title: const Text('Route'),
      content: const Text('Content for Route'),
      isActive: createShiftController.currentStep.value >= 2,
      state: createShiftController.currentStep.value >= 2 ? StepState.editing : StepState.complete,
    ),
    Step(
      title: const Text('Assign Guard'),
      content: const Text('Content for Assign Guard'),
      isActive: createShiftController.currentStep.value >= 3,
      state: createShiftController.currentStep.value >= 3 ? StepState.editing : StepState.complete,
    ),
  ];
} 
}