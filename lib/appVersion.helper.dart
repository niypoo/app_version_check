import 'package:app_configuration_service/appInfo.config.dart';
import 'package:app_version_check/updateAppRequired.page.dart';
import 'package:firebase_remote_config_service/remoteConfig.service.dart';
import 'package:get/get.dart';

class AppVersionCheck {
  static Future<void> check() async {
    // get version from server
    final double versionFromServer =
        RemoteConfigService.to.getDouble('version');

    // get version from app configuration
    final double appVersion = AppConfigService.to.appVersion;

    // check
    if (versionFromServer > appVersion) {
      // show message page
      return Get.to(() => const AppUpdateRequiredPage());
    }

    return;
  }
}
