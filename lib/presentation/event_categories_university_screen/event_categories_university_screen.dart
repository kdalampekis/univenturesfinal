import 'bloc/event_categories_university_bloc.dart';import 'models/event_categories_university_model.dart';import 'package:flutter/material.dart';import 'package:kwstas_s_application2/core/app_export.dart';import 'package:kwstas_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:kwstas_s_application2/widgets/app_bar/appbar_title.dart';import 'package:kwstas_s_application2/widgets/app_bar/appbar_trailing_image.dart';import 'package:kwstas_s_application2/widgets/app_bar/custom_app_bar.dart';class EventCategoriesUniversityScreen extends StatelessWidget {const EventCategoriesUniversityScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<EventCategoriesUniversityBloc>(create: (context) => EventCategoriesUniversityBloc(EventCategoriesUniversityState(eventCategoriesUniversityModelObj: EventCategoriesUniversityModel()))..add(EventCategoriesUniversityInitialEvent()), child: EventCategoriesUniversityScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<EventCategoriesUniversityBloc, EventCategoriesUniversityState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 7.v), child: Padding(padding: EdgeInsets.only(left: 37.h, right: 37.h, bottom: 5.v), child: Column(children: [Text("msg_unleash_your_academic".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 47.v), Container(width: 341.h, margin: EdgeInsets.only(left: 11.h, right: 4.h), padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 12.v), decoration: AppDecoration.outlinePrimary3.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Container(decoration: AppDecoration.outlineBlack9001, child: Text("lbl_university2".tr, style: CustomTextStyles.headlineSmallOnPrimarySemiBold))), SizedBox(height: 23.v), Container(width: 324.h, margin: EdgeInsets.only(left: 19.h, right: 11.h), child: Text("msg_educational_events".tr, maxLines: 6, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.titleMedium)), SizedBox(height: 34.v), SizedBox(height: 273.v, width: 269.h, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgFsdet1, height: 273.v, width: 269.h, alignment: Alignment.center), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: 9.h, right: 14.h), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgPhHeartFill, height: 48.v, width: 46.h, alignment: Alignment.centerRight), SizedBox(height: 182.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [_buildTelevisionStack(context, dateText: "lbl_30_may_2023".tr), _buildTelevisionStack1(context, bookNowText: "lbl_book_now".tr)])])))])), Container(margin: EdgeInsets.symmetric(horizontal: 42.h), padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 9.v), decoration: AppDecoration.outlineOnPrimary, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(left: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("msg_fsdet_sustainability".tr, style: CustomTextStyles.titleMediumBlack900_1), Text("lbl_university".tr, style: theme.textTheme.titleMedium)])), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgMdiLocationRadiusOutline, height: 19.v, width: 18.h), Padding(padding: EdgeInsets.only(left: 5.h, top: 2.v), child: Text("msg_keramikos_athens".tr, style: theme.textTheme.bodySmall))])), SizedBox(height: 2.v)])), SizedBox(height: 82.v), _buildThirtyEightColumn(context)]))))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 69.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgSettings, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v)), title: AppbarTitle(text: "lbl_univentures".tr, margin: EdgeInsets.only(left: 18.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgOcticonThreeBars16, margin: EdgeInsets.fromLTRB(33.h, 33.v, 33.h, 32.v), onTap: () {onTapOcticonThreeBarsSixteen(context);})]); } 
/// Section Widget
Widget _buildThirtyEightColumn(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 41.h), child: Column(children: [SizedBox(height: 275.v, width: 272.h, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgPhHeartBoldOnprimary, height: 44.v, width: 39.h, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 11.v, right: 13.h)), Align(alignment: Alignment.center, child: SizedBox(height: 275.v, width: 272.h, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgNtuaParty1, height: 275.v, width: 272.h, alignment: Alignment.center), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgPhHeartBoldOnprimary, height: 43.v, width: 40.h, alignment: Alignment.centerRight, margin: EdgeInsets.only(right: 6.h)), SizedBox(height: 187.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [_buildTelevisionStack(context, dateText: "lbl_30_may_2023".tr), _buildTelevisionStack1(context, bookNowText: "lbl_book_now".tr)])])))])))])), Container(padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 8.v), decoration: AppDecoration.outlineOnPrimary, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 2.h, right: 4.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_party_at_ntua".tr, style: CustomTextStyles.titleMediumBlack900_1), Text("lbl_university".tr, style: theme.textTheme.titleMedium)])), SizedBox(height: 8.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgMdiLocationRadiusOutline, height: 19.v, width: 18.h), Padding(padding: EdgeInsets.only(left: 6.h, top: 3.v), child: Text("msg_zografou_athens".tr, style: theme.textTheme.bodySmall))]), SizedBox(height: 8.v)]))])); } 
/// Common widget
Widget _buildTelevisionStack(BuildContext context, {required String dateText, }) { return SizedBox(height: 23.v, width: 91.h, child: Stack(alignment: Alignment.bottomLeft, children: [CustomImageView(imagePath: ImageConstant.imgTelevisionOnprimary, height: 23.v, width: 91.h, radius: BorderRadius.circular(11.h), alignment: Alignment.center), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 13.h, bottom: 2.v), child: Text(dateText, style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900))))])); } 
/// Common widget
Widget _buildTelevisionStack1(BuildContext context, {required String bookNowText, }) { return SizedBox(height: 21.v, width: 89.h, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgTelevisionPrimary, height: 21.v, width: 89.h, radius: BorderRadius.circular(10.h), alignment: Alignment.center), Align(alignment: Alignment.center, child: Text(bookNowText, style: theme.textTheme.labelLarge!.copyWith(color: theme.colorScheme.onPrimary.withOpacity(1))))])); } 
/// Navigates to the homeListScreen when the action is triggered.
onTapOcticonThreeBarsSixteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeListScreen, ); } 
 }