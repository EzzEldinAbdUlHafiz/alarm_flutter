import 'package:flutter/material.dart';

import 'clock.dart';
import 'country_card.dart';
import 'time_in_hour_and_minute.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            TimeInHourAndMinute(),
            Spacer(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                    country: "New York, USA",
                    timeZone: "-6 HRS ",
                    iconSrc: "assets/icons/Liberty.svg",
                    time: ":",
                    url: 'America/New_York',

                  ),
                  CountryCard(
                    country: "Sydney, AU",
                    timeZone: "+9 HRS ",
                    iconSrc: "assets/icons/Sydney.svg",
                    time: ":",
                    url: 'Australia/Sydney',
                  ),
                  CountryCard(
                    country: "London, UK",
                    timeZone: "-1 HRS",
                    iconSrc: "assets/icons/big-ben.svg",
                    time: ":",
                    url: 'Europe/London',

                  ),
                  CountryCard(
                    country: "Baghdad, IRQ",
                    timeZone: "+1 HRS ",
                    iconSrc: "assets/icons/al-shaheed-monument.svg",
                    time: ":",
                    url: 'Asia/Baghdad',

                  ),
                  CountryCard(
                    country: "Istanbul, TUR",
                    timeZone: "+1 HRS | ",
                    iconSrc: "assets/icons/blue-mosque.svg",
                    time: ":",
                    url: 'Europe/Istanbul',

                  ),
                  CountryCard(
                    country: "Dubai, UAE",
                    timeZone: "+2 HRS ",
                    iconSrc: "assets/icons/burj-al-arab.svg",
                    time: ":",
                    url: 'Asia/Dubai',

                  ),
                  CountryCard(
                    country: "Toronto, CAN",
                    timeZone: "-6 HRS ",
                    iconSrc: "assets/icons/cn-tower.svg",
                    time: ":",
                    url: 'America/Toronto',

                  ),
                  CountryCard(
                    country: "Paris, FRA",
                    timeZone: "0 HRS ",
                    iconSrc: "assets/icons/eiffel-tower.svg",
                    time: ":",
                    url: 'Europe/Paris',

                  ),
                  CountryCard(
                    country: "Kuala Lumpur, MYS",
                    timeZone: "+6 HRS ",
                    iconSrc: "assets/icons/petronas-twin-tower.svg",
                    time: ":",
                    url: 'Asia/Kuala_Lumpur',

                  ),
                  CountryCard(
                    country: "Giza, EGY",
                    timeZone: "0 HRS ",
                    iconSrc: "assets/icons/pyramids.svg",
                    time: ":",
                    url: 'Africa/Cairo',

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
