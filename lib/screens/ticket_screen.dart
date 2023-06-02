import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/views/ticket_view.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';
import '../widgets/column_layout.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20.0), vertical: AppLayout.getHeight(20.0)),
              children: [

                Gap(AppLayout.getHeight(40.0)),
                Text('Tickets', style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35.0)),),

                Gap(AppLayout.getHeight(20.0)),
                const AppTicketsTab(firstTabText: 'Upcoming', secondTabText: 'Previous'),

                Gap(AppLayout.getHeight(20.0)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15.0)),
                  child: TicketView(ticket: ticketList[0],isColor: true,),
                ),

                const SizedBox(height: 1.0,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                  margin: const EdgeInsets.symmetric(horizontal: 15.0),
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(firstText: 'Flutter DB', secondText: 'Passenger', alignment: CrossAxisAlignment.start, isColor: false,),

                          AppColumnLayout(firstText: '9036 537559', secondText: 'Passport', alignment: CrossAxisAlignment.end, isColor: false,),
                        ],
                      ),

                      Gap(AppLayout.getHeight(20.0)),
                      const LayoutBuilderWidget(dotSectionCount: 15, isColor: false, width: 5.0,),

                      Gap(AppLayout.getHeight(20.0)),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(firstText: '5372 923763', secondText: 'E-ticket Numbers', alignment: CrossAxisAlignment.start, isColor: false,),

                          AppColumnLayout(firstText: 'B2S628', secondText: 'Booking code', alignment: CrossAxisAlignment.end, isColor: false,),
                        ],
                      ),

                      Gap(AppLayout.getHeight(20.0)),
                      const LayoutBuilderWidget(dotSectionCount: 15, isColor: false, width: 5.0,),

                      Gap(AppLayout.getHeight(20.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/image7.png', scale: 11,),
                                  Text(" *** 2462", style: Styles.headLineStyle3,)
                                ],
                              ),
                              const Gap(5),
                              Text('Payment method', style: Styles.headLineStyle4,)
                            ],
                          ),
                          const AppColumnLayout(
                            firstText: '\$249.99',
                            secondText: 'Price',
                            alignment: CrossAxisAlignment.end,
                            isColor: false
                          ),
                        ],
                      ),

                      Gap(AppLayout.getHeight(20.0)),
                      const LayoutBuilderWidget(dotSectionCount: 15, isColor: false, width: 5.0,),
                    ],
                  ),
                ),

                //BarCode here
                const SizedBox(height: 1.0,),
                Container(
                  margin: EdgeInsets.only(left: AppLayout.getHeight(15.0), right: AppLayout.getHeight(15.0)),
                  padding: EdgeInsets.only(top: AppLayout.getHeight(20.0), bottom: AppLayout.getHeight(20.0)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(AppLayout.getHeight(21.0)),
                        bottomLeft: Radius.circular(AppLayout.getHeight(21.0)),
                      )
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15.0)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(15.0)),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https://github.com/martinovovo',
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                      ),
                    ),
                  ),
                ),

                Gap(AppLayout.getHeight(20.0)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15.0)),
                  child: TicketView(ticket: ticketList[0],)
                )
              ]
          ),

          Positioned(
            left: AppLayout.getHeight(22.0),
            top: AppLayout.getHeight(295.0),
            child: Container(
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4.0,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(22.0),
            top: AppLayout.getHeight(295.0),
            child: Container(
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4.0,
                backgroundColor: Styles.textColor,
              ),
            ),
          )
        ],
      )
    );
  }
}
