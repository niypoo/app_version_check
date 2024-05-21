import 'package:flutter/material.dart';
import 'package:fly_ui/extensions/responsive.extension.dart';
import 'package:fly_ui/views/layouts/landscapeView.widget.dart';
import 'package:fly_ui/views/layouts/responsiveView.widget.dart';
import 'package:fly_ui/views/layouts/scaffoldLayout.widget.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

class AppUpdateRequiredPage extends StatelessWidget {
  const AppUpdateRequiredPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: FlyScaffold.padding(
        child: const FlyLayoutResponsiveView(
          portrait: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppUpdateIcon(),
                AppUpdateTitle(),
                AppUpdateDescription(),
              ],
            ),
          ),
          landscape: FlyLandscapeView(
            childA: Center(child: AppUpdateIcon()),
            childB: SingleChildScrollView(
              child: Column(
                children: [
                  AppUpdateTitle(),
                  AppUpdateDescription(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AppUpdateDescription extends StatelessWidget {
  const AppUpdateDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'AppVersionCheck.The app is outdated, Please update to the latest version to continue.'
          .tr,
      style: Get.textTheme.titleSmall!.copyWith(
        fontSize: 10.sp,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class AppUpdateTitle extends StatelessWidget {
  const AppUpdateTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'AppVersionCheck.Update Required'.tr,
      style: Get.textTheme.titleLarge!.copyWith(
        fontSize: 13.sp,
        color: Get.theme.primaryColor,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class AppUpdateIcon extends StatelessWidget {
  const AppUpdateIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.sp),
      child: Icon(
        UniconsLine.arrow_circle_up,
        size: 50.sp,
      ),
    );
  }
}
