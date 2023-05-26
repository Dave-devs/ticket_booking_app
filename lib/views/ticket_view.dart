import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import '../utils/app_layout.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size context for SizedBox (ticket fixed size) measurement.
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,//For Ticket Ui to use 855 of screen while scrolling.
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16.0),
        //Parent Column for list of child container with row for ticket design
        child: Column(
          children: [
            //Blue part of ticket UI in Ticket View
            Container(
              padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 16.0),
              decoration: BoxDecoration(
               color: Styles.topConColor,
               borderRadius: const BorderRadius.only(
                   topLeft: Radius.circular(21),
                   topRight: Radius.circular(21)
               ),
             ),
              child: Column(
                children: [
                  //First Row Child for destination in ticket design
                  Row(
                    children: [
                      Text('NYC', style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      const Spacer(), //This is a space before the middle widget.
                      const ThickContainer(), //Circular Container
                      //Dot and Airplane between the two circular widget (ThickContainer) put in Stack Widget.
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24.0,
                              //Layout Builder to calculate space between the thick container for the dot based on screen sizes with BoxConstraints help.
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  if (kDebugMode) {
                                    print('The constraint is ${constraints.constrainWidth()}');
                                  }
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate((constraints.constrainWidth() / 6).floor(), (index) => const SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Colors.white
                                        ),),
                                    )),
                                  );
                                },
                              ),
                            ),
                            //Center Airplane in middle and rotate 90%.
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white
                                ),
                              ),
                            ),
                          ],
                        )
                      ),
                      const ThickContainer(), //Circular Container
                      const Spacer(), //This is a space after the middle widget.
                      Text('LND', style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      ],
                  ),
                  const Gap(3),
                  //Second Row Child for destination in ticket design
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100.0,
                        child: Text('New York', style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      ),
                      Text('8H: 30M', style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      SizedBox(
                        width: 100.0,
                        child: Text('London', textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //The Orange part of ticket UI in Ticket View
            Container(
              color: Styles.bottomConColor,
              child:  Row(
                children: [
                  //The first half circular container before the dot
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
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
                                children: List.generate((constraints.constrainWidth()/16).floor(), (index) => const SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.white
                                      )
                                  ),
                                ))
                            );
                          },
                        ),
                      )
                  ),
                  //The second half circular container after the dot
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Te third part of ticket UI in Ticket View
            Container(
              decoration: BoxDecoration(
                color: Styles.bottomConColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21)
                )
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '24 DEC', style: Styles.headLineStyle3.copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            'Date', style: Styles.headLineStyle4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '22: 00 PM', style: Styles.headLineStyle3.copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            'Departure Time', style: Styles.headLineStyle4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '5 JAN', style: Styles.headLineStyle3.copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            'Date', style: Styles.headLineStyle4.copyWith(color: Colors.white),
                          ),
                        ],
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
