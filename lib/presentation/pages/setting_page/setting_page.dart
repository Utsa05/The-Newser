import 'package:flutter/material.dart';
import 'package:newser/presentation/themes/app_colors.dart';
import 'package:newser/presentation/widgets/text_releted/text_widget.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.primarColor,
        title: const TextWidget(
          title: 'Setting',
          weight: FontWeight.bold,
          color: AppColor.whiteColor,
          size: 19.0,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 14.0, right: 14.0),
        child: Column(
          children: [
            SettingItemWidget(
              icon: Icons.feedback_outlined,
              title: 'Username',
              subtitle: 'user@gmail.com',
              tap: () {},
              widget: const Icon(Icons.arrow_forward_ios_outlined),
              isUser: true,
            ),
            const Divider(
              thickness: 1,
            ),
            SettingItemWidget(
              icon: Icons.feedback_outlined,
              title: 'Give Feedback',
              subtitle: 'Help us improve Newser',
              tap: () {},
              isUser: false,
            ),
            const Divider(
              thickness: 1,
            ),
            SettingItemWidget(
              isUser: false,
              icon: Icons.language,
              title: 'Language',
              tap: () {},
              widget: MaterialButton(
                minWidth: 50.0,
                height: 30.0,
                child: const TextWidget(
                  title: 'English',
                  color: AppColor.whiteColor,
                ),
                onPressed: () {},
                color: AppColor.primarColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
              ),
              subtitle: '',
            ),
            SettingItemWidget(
              isUser: false,
              icon: Icons.dark_mode,
              title: 'Theme',
              tap: () {},
              widget: MaterialButton(
                minWidth: 50.0,
                height: 28.0,
                child: const TextWidget(
                  title: 'Light',
                  color: AppColor.whiteColor,
                ),
                onPressed: () {},
                color: AppColor.primarColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
              ),
              subtitle: '',
            ),
            SettingItemWidget(
              isUser: false,
              icon: Icons.logout_outlined,
              title: 'Logout',
              tap: () {},
              widget: MaterialButton(
                minWidth: 50.0,
                height: 28.0,
                child: const TextWidget(
                  title: 'Exit',
                  color: AppColor.whiteColor,
                ),
                onPressed: () {},
                color: AppColor.primarColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
              ),
              subtitle: '',
            ),
          ],
        ),
      ),
    );
  }
}

class SettingItemWidget extends StatelessWidget {
  const SettingItemWidget({
    Key? key,
    required this.icon,
    required this.title,
    this.widget,
    required this.tap,
    required this.subtitle,
    required this.isUser,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final String subtitle;
  final Widget? widget;
  final GestureTapCallback tap;
  final bool isUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: MaterialButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                isUser == false
                    ? CircleAvatar(
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Icon(
                            icon,
                            color: AppColor.blackColor,
                          ),
                        ),
                        radius: 22.0,
                        backgroundColor: AppColor.greyColor,
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          'assets/images/news_image.jpg',
                          fit: BoxFit.fill,
                          width: 55.0,
                          height: 55.0,
                        ),
                      ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      title: title,
                      weight: FontWeight.bold,
                      color: AppColor.titleColor,
                      size: 19.0,
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    subtitle.isNotEmpty
                        ? TextWidget(
                            title: subtitle,
                            color: AppColor.titleColor,
                            size: 15.0)
                        : const SizedBox()
                  ],
                )
              ],
            ),
            widget ?? Container()
          ],
        ),
      ),
    );
  }
}
