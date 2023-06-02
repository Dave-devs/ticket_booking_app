import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';
import '../utils/app_layout.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size context for SizedBox (ticket fixed size) measurement.
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width*0.85,//For Ticket Ui to use 855 of screen while scrolling.
      height: AppLayout.getHeight(GetPlatform.isAndroid == true? 167 : 169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16.0)),
        //Parent Column for list of child container with row for ticket design
        child: Column(
          children: [
            //Blue part of ticket UI in Ticket View
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(16.0)),
              decoration: BoxDecoration(
                //{tynary operator-> if color(if is null[false]) is null use topConColor else (if not null[true]) white}
                color: isColor == null ? Styles.topConColor : Colors.white,
               borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(AppLayout.getHeight(21.0)),
                   topRight: Radius.circular(AppLayout.getHeight(21.0))
               ),
             ),
              child: Column(
                children: [
                  //First Row Child for destination in ticket design
                  Row(
                    children: [
                      Text(
                          ticket['from']['code'],
                          //{tynary operator-> if color(if is null[false]) is null use style-Color.white else (if not null[true]) Style headline3 color}
                          style: isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3
                      ),

                      const Spacer(), //This is a space before the middle widget.

                      const ThickContainer(isColor:true), //Circular Container
                      //Dot and Airplane between the two circular widget (ThickContainer) put in Stack Widget.
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24.0),
                              //Layout Builder to calculate space between the thick container for the dot based on screen sizes with BoxConstraints help.
                              child: const LayoutBuilderWidget(dotSectionCount: 6,),
                            ),
                            //Center Airplane in middle and rotate 90%.
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                    //{tynary operator-> if color(if is null[false]) is null use Color.white else (if not null[true]) Color(...)}
                                  color: isColor == null ? Colors.white : const Color(0xFF8ACCF7)
                                ),
                              ),
                            ),
                          ],
                        )
                      ),

                      const ThickContainer(isColor:true), //Circular Container

                      const Spacer(), //This is a space after the middle widget.

                      Text(
                          ticket['to']['code'],
                          //if color == null 'Style White color' Else 'Style headline3'
                          style: isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3
                      ),
                      ],
                  ),
                  const Gap(3),
                  //Second Row Child for destination in ticket design
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100.0),
                        child: Text(
                          ticket['from']['name'],
                            //if color == null 'Style White color' Else 'Style headline4'
                          style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                          //if color == null 'Style White color' Else 'Style headline4'
                        style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100.0),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                            //if color == null 'Style White color' Else 'Style headline4'
                          style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //The Orange part of ticket UI in Ticket View
            Container(
              //if color == null 'Style BottomConColor' Else 'White color'
              color: isColor == null ? Styles.bottomConColor : Colors.white,
              child:  Row(
                children: [
                  //The first half circular container before the dot
                  SizedBox(
                    height: AppLayout.getHeight(20.0),
                    width: AppLayout.getWidth(10.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        //if color == null 'Grey color' Else 'White color'
                          color: isColor == null ? Colors.grey.shade200 : Colors.white,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )
                      ),
                    ),
                  ),
                  //The horizontally aligned dots
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context, BoxConstraints constraints) {
                            return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                                  width: AppLayout.getWidth(5.0),
                                  height: AppLayout.getHeight(1.0),
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        //if color == null 'White color' Else 'Grey color'
                                          color: isColor == null ? Colors.white : Colors.grey.shade300
                                      )
                                  ),
                                ))
                            );
                          },
                        ),
                      )
                  ),

                  //The second half circular container after the dot
                  SizedBox(
                    height: AppLayout.getHeight(20.0),
                    width: AppLayout.getWidth(10.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        //if color == null 'Grey color' Else 'White color'
                        color: isColor == null ? Colors.grey.shade200 : Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //The third part of ticket UI in Ticket View
            Container(
              decoration: BoxDecoration(
                //if color == null 'Style BottomConColor' Else 'White color'
                color: isColor == null ? Styles.bottomConColor : Colors.white,
                borderRadius: BorderRadius.only(
                  //I use isColor since it's a boolean already.
                  bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                  bottomRight: Radius.circular(isColor == null ? 21 : 0)
                )
              ),
              padding: const EdgeInsets.only(left: 16.0, top: 10.0, right: 16.0, bottom: 16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firstText: ticket['date'],
                          secondText: 'Date',
                          alignment: CrossAxisAlignment.start,
                          isColor: isColor
                      ),

                      AppColumnLayout(
                          firstText: ticket['departure_time'],
                          secondText: 'Departure Time',
                          alignment: CrossAxisAlignment.center,
                          isColor: isColor
                      ),

                      AppColumnLayout(
                          firstText: "${ticket['number']}",
                          secondText: 'Number',
                          alignment: CrossAxisAlignment.end,
                          isColor: isColor
                      ),

                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}