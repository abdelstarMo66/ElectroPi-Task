import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mzady/core/themes/color_manager.dart';
import 'package:mzady/core/themes/font_manager.dart';
import 'package:mzady/core/themes/style_manager.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/size_manager.dart';

class HomeBannerSection extends StatefulWidget {
  const HomeBannerSection({super.key});

  @override
  State<HomeBannerSection> createState() => _HomeBannerSectionState();
}

class _HomeBannerSectionState extends State<HomeBannerSection> {
  int _activePage = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final textTheme = context;

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsetsDirectional.only(top: 24.0, bottom: 12.0),
        child: Column(
          children: [
            CarouselSlider.builder(
              carouselController: _controller,
              itemCount: 5,
              options: CarouselOptions(
                height: 200,
                viewportFraction: 0.88,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayCurve: Curves.easeInOutCubic,
                onPageChanged: (index, reason) {
                  setState(() => _activePage = index);
                },
              ),
              itemBuilder: (context, index, realIndex) {
                return Stack(
                  children: [
                    CustomNetworkImage(
                      imageUrl:
                          'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?q=80&w=1000',
                      width: MediaQuery.sizeOf(context).width * 0.88,
                      height: 200,
                      borderRadius: 28,
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              context.colorScheme.onSurface.withValues(
                                alpha: AppSize.op0_9,
                              ),
                              AppColors.transparent,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Luxury Villa Auction',
                              style: TextStyleManager.createCustomFontStyle(
                                context,
                                fontSize: FontSize.s22,
                                fontWeight: FontWeightManager.bold,
                                height: 1.1,
                                color: context.colorScheme.surface,
                              ),
                            ),
                            Text(
                              'Premium Property',
                              style: textTheme.bodySmall?.copyWith(
                                color: context.colorScheme.surface.withValues(
                                  alpha: AppSize.op0_7,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            AppSize.s16.verticalSpace,
            AnimatedSmoothIndicator(
              activeIndex: _activePage,
              count: 5,
              effect: ExpandingDotsEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: context.colorScheme.primary,
                dotColor: context.colorScheme.onSurfaceVariant.withValues(
                  alpha: AppSize.op0_5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
