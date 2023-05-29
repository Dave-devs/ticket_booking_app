import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/views/hotel_view.dart';
import 'package:ticket_booking_app/widgets/view_all_widget.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../views/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          //First Column container
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const Gap(35),
                //First Row Widget
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Good Morning',
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                            'Book Ticket',
                          style: Styles.headLineStyle1
                        ),
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(50.0),
                      width: AppLayout.getHeight(50.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('assets/image.jpg'),
                            fit: BoxFit.fitHeight
                        )
                      ),
                    )
                  ],
                ),
                const Gap(15),
                //Second Row Widget(Search Bar)
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.black45,
                      ),
                      const Gap(25),
                      Text(
                          'Search...',
                        style: Styles.headLineStyle4.copyWith(color: Colors.black45),
                      )
                    ],
                  ),
                ),
                const Gap(40),
                //Third Row Widget(Upcoming Flight)
                const ViewAllWidget(bigText: 'Upcoming Flights', smallText: 'View all',)
              ],
            ),
          ),
          const Gap(15),
          //Second Column container
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20.0),
            //reverse: true,
            child: Row(
              children: ticketList.map((tickets) => TicketView(ticket: tickets,)).toList()
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
              //Row Widget for (Hotels list)
            child: const ViewAllWidget(bigText: 'Hotels', smallText: 'View all',)
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              //*Mapped hotelList to a single map hotel declared in Hotel View class the we reference it here.
              children: hotelList.map((singleHotel) => HotelView(hotel: singleHotel)).toList(),
            ),
          )
        ],
      ),
    );
  }
}