import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class HotelView extends StatelessWidget {
  const HotelView({Key? key, required this.hotel}) : super(key: key);
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350.0),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 16.0, bottom: 16.0),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(24.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12.0)),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    hotel['image']
                )
              )
            ),
          ),
          const Gap(10.0),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.khakiColor)
          ),
          const Gap(10.0),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle2.copyWith(color: Colors.white)
          ),
          const Gap(8.0),
          Text(
              //'\$40/night',
              '\$${hotel['price']}/night',
              style: Styles.headLineStyle2.copyWith(color: Styles.khakiColor)
          ),
        ],
      ),
    );
  }
}