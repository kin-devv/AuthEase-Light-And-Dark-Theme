import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:qoute_app/constants/image_constants.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';
import '../widgets/common_widgets/annotated_scaffolder.dart';
import '../widgets/common_widgets/custom_field.dart';
import '../widgets/common_widgets/primary_button.dart';
import '../widgets/common_widgets/text_widgets.dart';

class BvnVerification extends StatelessWidget {
  //
  final _formKey = GlobalKey<FormState>();
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnnotatedScaffold(
      child: Scaffold(
        appBar: AppBar(
          leading: Semantics(
            button: true,
            child: InkWell(
              onTap: () {
                // go back
                GoRouter.of(context).pop();
              },
              borderRadius: BorderRadius.circular(20.sp),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: SvgPicture.asset(
                  ConstantImage.back,
                  fit: BoxFit.scaleDown,
                  color: context.theme.iconTheme.color,
                ),
              ),
            ),
          ),
          backgroundColor: theme.scaffoldBackgroundColor,
        ),
        backgroundColor: theme.scaffoldBackgroundColor,
        body: SafeArea(
          top: true,
          child: Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h),
                    SpanText(
                      title: 'BVN Verification',
                      subtitle: '',
                    ),
                    SizedBox(height: 10.h),
                    Text(
                        'We need this information before we can\nprovide you with account details'),
                    SizedBox(height: 30.h),
                    CustomTextField(
                      controller: otpController,
                      hintText: 'Enter your BVN',
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      validator: (v) {
                        // create validator
                      },
                    ),
                    SizedBox(height: 420.h),
                    PrimaryButton(
                      text: "Continue",
                      onPressed: () {
                        // if (_formKey.currentState!.validate()) {
                        //   // login
                        // }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
