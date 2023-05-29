import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/view_all_widget.dart';
import '../widgets/flight_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20.0),
            vertical: AppLayout.getHeight(20.0)
        ),
        children: [
          Gap(AppLayout.getHeight(40.0)),
          //Leading text
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHeight(20.0)),
          //Split Containers that house both 'Airline Ticket' and 'Hotels'
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Styles.searchBoxColor
              ),
              child: Row(
                children: [
                  //Container for 'Airline Ticket'.
                  Container(
                    width: size.width * 44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7.0)),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
                        color: Colors.white
                    ),
                    child: Center(child: Text('Airline Tickets',style: Styles.headLineStyle1,)),
                  ),
                  //Container for 'Hotels'.
                  Container(
                    width: size.width * 44,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
                        color: Colors.transparent
                    ),
                    child: const Center(child: Text('Hotels')),
                  )
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25.0)),
          //Reusable widget for flight status
          const FlightWidget(icon: Icons.flight_takeoff_rounded, text: 'Departure',),
          Gap(AppLayout.getHeight(20.0)),
          const FlightWidget(icon: Icons.flight_land_rounded, text: 'Arrival',),
          Gap(AppLayout.getHeight(25.0)),
          //Blue Button
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(18.0),
                horizontal: AppLayout.getWidth(16.0)
            ),
            color: Styles.buttonColor,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Center(
                child: Text(
                  'Find Tickets',
                  style: Styles.textStyle.copyWith(color: Colors.white, fontSize: 20),
                )
            ),
          ),
          Gap(AppLayout.getHeight(40.0)),
          const ViewAllWidget(bigText: 'Upcoming Flights', smallText: 'View all'),
          Gap(AppLayout.getHeight(15.0)),
          //Row for the last UI children wrapper.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Row first child with two children {Container and Text}
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15.0),
                  vertical: AppLayout.getWidth(15.0)
                ),
                height: AppLayout.getHeight(425),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(20.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 1,
                          spreadRadius: 2.0
                      )
                    ]
                ),
                child: Column(
                  children: [
                    //Container child
                    Container(
                      height: AppLayout.getHeight(190.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12.0)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/image6.jpg')
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(12.0)),
                    //Text Child
                    Text(
                      "20% discount on early bookings of this flights. Don't miss out this great opportunity",
                      style: Styles.headLineStyle2,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Gap(AppLayout.getWidth(20.0)),
              //Row second child with two Container children
              Column(
                children: [
                  //Container number one
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15.0), horizontal: AppLayout.getWidth(15.0)),
                        height: AppLayout.getHeight(210.0),
                        width: size.width * 0.44,
                        decoration: BoxDecoration(
                            color: const Color(0xFF3ABBBB),
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(18.0))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Gap(AppLayout.getHeight(10.0)),
                            Text(
                              'Take the survey about our services and get discount',
                              style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45.0,
                        top: -40.0,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30.0)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18,
                                  color: const Color(0xFF189999)
                              ),
                              color: Colors.transparent
                          ),
                        ),
                      )
                    ]
                  ),
                  Gap(AppLayout.getHeight(15.0)),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15.0), horizontal: AppLayout.getWidth(15.0)),
                    height: AppLayout.getHeight(210.0),
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                        color: const Color(0xFFEC6545),
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(18.0))
                    ),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Take love',
                          style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(5.0)),
                        RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'emoji1',
                                  style: TextStyle(fontSize: 38)
                                ),
                                TextSpan(
                                  text: 'emoji2',
                                  style: TextStyle(fontSize: 50)
                                ),
                                TextSpan(
                                  text: 'emoji3',
                                  style: TextStyle(fontSize: 38)
                                ),
                              ]
                            )
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

