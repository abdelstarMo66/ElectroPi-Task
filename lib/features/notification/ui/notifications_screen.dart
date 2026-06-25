import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/core/widgets/custom_layout_body.dart';
import 'package:mzady/core/widgets/custom_text.dart';
import 'package:mzady/features/notification/ui/widgets/build_notification_group.dart';
import 'package:mzady/features/notification/ui/widgets/build_notification_section_label.dart';
import 'package:mzady/features/notification/ui/widgets/notification_card.dart';

import '../../../translations/locale_keys.g.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const CustomText(textKey: LocaleKeys.notification_appbar_header),
        actions: [
          IconButton(
            icon: Icon(
              Icons.done_all_rounded,
              color: context.colorScheme.primary,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: CustomLayoutBody(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const BuildNotificationSectionLabel(
              title: LocaleKeys.notification_today_label,
            ),
            const BuildNotificationGroup(
              items: [
                NotificationCard(
                  title: 'Auction Won! 🏆',
                  body:
                      'You won "iPhone 15 Pro Max". Proceed to payment to claim it.',
                  time: '10m ago',
                  icon: Icons.emoji_events_rounded,
                  color: Colors.orange,
                  isUnread: true,
                  actionLabel: LocaleKeys.notification_pay_now_btn,
                ),
                NotificationCard(
                  title: 'Outbid! ⚠️',
                  body:
                      'Someone bid higher on "Gaming PC". Current: 45,000 EGP.',
                  time: '35m ago',
                  icon: Icons.trending_up_rounded,
                  color: Colors.redAccent,
                  isUnread: true,
                  actionLabel: LocaleKeys.notification_bid_again_btn,
                ),
              ],
            ),

            const BuildNotificationSectionLabel(
              title: LocaleKeys.notification_earlier_label,
            ),
            BuildNotificationGroup(
              items: [
                NotificationCard(
                  title: 'Auction Starting',
                  body:
                      'The auction for "Vintage Watch" you followed is live now!',
                  time: '5h ago',
                  icon: Icons.campaign_rounded,
                  color: context.colorScheme.primary,
                ),
                const NotificationCard(
                  title: 'Payment Confirmed',
                  body: 'We received your payment for the "Leather Sofa".',
                  time: 'Yesterday',
                  icon: Icons.check_circle_rounded,
                  color: Colors.green,
                ),
                const NotificationCard(
                  title: 'Security Alert',
                  body: 'Your password was changed successfully.',
                  time: '2 days ago',
                  icon: Icons.lock_person_rounded,
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
