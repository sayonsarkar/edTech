import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/utilities/colors.dart';
import 'package:edtech/utilities/messenger_service.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:edtech/widget/components/app_bar.dart';
import 'package:edtech/widget/settings/modal_bottom_form.dart';
import 'package:edtech/widget/settings/settings_container.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  final bool close;
  const SettingsPage({Key? key, required this.close}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool setSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          appBarWithLeadingIcon(text: KString.settings, close: widget.close),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: SingleChildScrollView(
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
                          activeColor: KColor.appGrenColor,
                          value: setSwitch,
                          onChanged: (val) {
                            setState(() {
                              setSwitch = val;
                            });
                            val == true
                                ? MessengerService.sendToastAlert(
                                    KString.turnedOn)
                                : MessengerService.sendToastAlert(
                                    KString.turnedOff);
                          }),
                      text: KString.notifications),
                  Text(
                    KString.accountInfo,
                    style: TextStyles.profileContainersText,
                  ),
                  settingsContainer(Assets.images.name.image(scale: 2), context,
                      const Icon(Icons.arrow_forward_ios),
                      text: KString.name, subText: KString.userName, onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return modalBottomForm(context,
                            formHeader: KString.changeName,
                            formLabel: KString.name);
                      },
                    );
                  }),
                  settingsContainer(Assets.images.email.image(scale: 2),
                      context, const Icon(Icons.arrow_forward_ios),
                      text: KString.email,
                      subText: KString.userEmail, onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return modalBottomForm(context,
                            formHeader: KString.changeEmail,
                            formLabel: KString.email);
                      },
                    );
                  }),
                  settingsContainer(Assets.images.password.image(scale: 2),
                      context, const Icon(Icons.arrow_forward_ios),
                      text: KString.password,
                      subText: KString.lastChanged, onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return modalBottomForm(context,
                            formHeader: KString.changePassword,
                            formLabel: KString.password);
                      },
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
