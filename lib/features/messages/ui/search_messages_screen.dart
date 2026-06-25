import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/core/widgets/custom_text.dart';
import 'package:mzady/core/widgets/custom_text_field.dart';
import 'package:mzady/features/messages/ui/widgets/build_recent_searches.dart';
import 'package:mzady/features/messages/ui/widgets/build_search_section_header.dart';
import 'package:mzady/features/messages/ui/widgets/build_suggested_contacts.dart';

import '../../../translations/locale_keys.g.dart';

class SearchMessagesScreen extends StatefulWidget {
  const SearchMessagesScreen({super.key});

  @override
  State<SearchMessagesScreen> createState() => _SearchMessagesScreenState();
}

class _SearchMessagesScreenState extends State<SearchMessagesScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: CustomText(textKey: LocaleKeys.search_messages_appbar_header),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Hero(
                tag: 'search_bar',
                child: CustomTextField(
                  controller: searchController,
                  hintText: LocaleKeys.search_messages_search_hint,
                  prefixIcon: AppSvgIcon(
                    iconName: AssetsManager.icSearch,
                    size: 20.0,
                    color: context.colorScheme.primary,
                  ),
                  fillColor: context.colorScheme.surface,
                ),
              ),
            ),
          ),

          const BuildSearchSectionHeader(
            title: LocaleKeys.search_messages_recent_searches_header,
            showClearAll: true,
          ),
          const BuildRecentSearches(),

          const BuildSearchSectionHeader(
            title: LocaleKeys.search_messages_suggested_contacts_header,
          ),
          const BuildSuggestedContacts(),

          SliverToBoxAdapter(child: AppSize.s20.verticalSpace),
        ],
      ),
    );
  }
}
