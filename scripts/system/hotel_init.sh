#!/bin/sh
# chkconfig: 35 99 01
# description: Starts and stops the Hotel Booking System

# Run 'chkconfig --add hotel_init' (as root) to enable system startup on boot

su - aspect /home/aspect/hotel_booking/bin/init/start.sh
