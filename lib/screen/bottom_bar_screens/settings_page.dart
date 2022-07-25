import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:edtech/widget/components/app_bar.dart';
import 'package:edtech/widget/settings/settings_container.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool setSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithLeadingIcon(text: KString.settings),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Assets.images.settingsImage.image(scale: 2)),
                settingsContainer(
                    Assets.images.notification.image(scale: 2),
                    context,
                    Switch(
                        value: setSwitch,
                        onChanged: (val) {
                          setState(() {
                            setSwitch = val;
                          });
                        }),
                    text: KString.notifications),
                const Text(
                  KString.accountInfo,
                  style: TextStyles.profileContainersText,
                ),
                settingsContainer(Assets.images.name.image(scale: 2), context,
                    const Icon(Icons.arrow_forward_ios),
                    text: KString.name, subText: KString.userName),
                settingsContainer(Assets.images.email.image(scale: 2), context,
                    const Icon(Icons.arrow_forward_ios),
                    text: KString.email, subText: KString.userEmail),
                settingsContainer(Assets.images.password.image(scale: 2),
                    context, const Icon(Icons.arrow_forward_ios),
                    text: KString.password, subText: KString.lastChanged),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
