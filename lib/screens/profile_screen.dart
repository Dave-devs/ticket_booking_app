import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';
import '../widgets/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20.0),vertical: AppLayout.getHeight(20.0)),
        children: [
          Gap(AppLayout.getHeight(40.0)),
          Row(
            children: [
              Container(
                height: AppLayout.getHeight(86.0),
                width: AppLayout.getHeight(86.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10.0)),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/image.jpg'
                    )
                  )
                ),
              ),

              Gap(AppLayout.getHeight(10.0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Book Tickets', style: Styles.headLineStyle1,),

                  Gap(AppLayout.getHeight(2.0)),
                  Text('New York', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey.shade500)),

                  Gap(AppLayout.getHeight(8.0)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3.0), vertical: AppLayout.getHeight(3.0)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3.0),
                          decoration: const BoxDecoration(
                             shape: BoxShape.circle,
                              color: Color(0xFF526799)
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white, size: 15.0,),
                        ),

                        Gap(AppLayout.getHeight(5.0)),
                        const Text('Premium status', style: TextStyle(color: Color(0xFF526799), fontWeight: FontWeight.w600),),
                        Gap(AppLayout.getHeight(5.0)),
                      ],
                    ),
                  )
                ],
              ),

              const Spacer(),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {
                        if (kDebugMode) {
                          print('You tap on edit');

                        }},
                      child: Text('Edit', style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),)
                  )
                ],
              )

            ],
          ),

          Gap(AppLayout.getHeight(8.0)),
          Divider(color: Colors.grey.shade300,),

          Gap(AppLayout.getHeight(8.0)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90.0),
                width: double.infinity,//Whatever available width take all of it.
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18.0))
                ),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30.0)),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: const Color(0xFF264CD2))
                    ),
                  )
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25.0), vertical: AppLayout.getHeight(20.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27.0,
                      ),
                    ),

                    Gap(AppLayout.getHeight(12.0)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You/'ve got a new award",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9), fontSize: 16),),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),

          Gap(AppLayout.getHeight(25.0)),
          Text('Accumulated miles', style: Styles.headLineStyle2,),

          Gap(AppLayout.getHeight(20.0)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15.0)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1
                )
              ]
            ),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15.0)),
                Text('192802', style: TextStyle(fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600),),

                Gap(AppLayout.getHeight(15.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles acquired', style: Styles.headLineStyle4.copyWith(fontSize: 16.0),),
                    Text('2 June 2023', style: Styles.headLineStyle4.copyWith(fontSize: 16.0),),
                  ],
                ),

                Gap(AppLayout.getHeight(4.0)),
                Divider(color: Colors.grey.shade300,),
                Gap(AppLayout.getHeight(4.0)),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: '23 042', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: false),

                    AppColumnLayout(firstText: 'Airline CO', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: false),
                  ],
                ),

                Gap(AppLayout.getHeight(12)),
                const LayoutBuilderWidget(dotSectionCount: 12, isColor: false),

                Gap(AppLayout.getHeight(12)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: '24', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: false),

                    AppColumnLayout(firstText: 'Google', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: false),
                  ],
                ),

                Gap(AppLayout.getHeight(12)),
                const LayoutBuilderWidget(dotSectionCount: 12, isColor: false),

                Gap(AppLayout.getHeight(12)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: '52 340', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: false),

                    AppColumnLayout(firstText: 'Meta', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: false),
                  ],
                )
              ],
            ),
          ),

          Gap(AppLayout.getHeight(25.0)),
          InkWell(
            onTap: () {
              if (kDebugMode) {
                print('You tap on How to get more miles');
              }
              },
            child: Center(
                child: Text('How to get more miles', style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500),)
            ),
          )
        ],
      ),
    );
  }
}
