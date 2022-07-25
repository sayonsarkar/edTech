import 'package:edtech/utilities/strings.dart';
import 'package:edtech/widget/course/course_custom_tab.dart';
import 'package:flutter/material.dart';

tabBar(BuildContext context, TabController? tabController, int? activeTabIndex,
    {Function(int)? onTap}) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.05,
        child: TabBar(
          controller: tabController,
          onTap: onTap,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.transparent,
          labelPadding: const EdgeInsets.symmetric(horizontal: 4),
          tabs: [
            customTab(
              context,
              index: 0,
              title: KString.lesson,
              activeTabIndex: activeTabIndex,
            ),
            customTab(
              context,
              title: KString.tests,
              index: 1,
              activeTabIndex: activeTabIndex,
            ),
            customTab(
              context,
              title: KString.discuss,
              index: 2,
              activeTabIndex: activeTabIndex,
            ),
          ],
        ),
      ),
    ),
  );
}
