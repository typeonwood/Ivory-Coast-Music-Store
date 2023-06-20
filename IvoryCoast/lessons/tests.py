from rest_framework.test import APITestCase
from .models import Month, Venue, Event, TrialBooking
from datetime import date, time


class EventModelTest(APITestCase):
    
    def setUp(self):
        venue = Venue.objects.create(name='some place', address='non of ur beeswax', phone=9671872345)
        month = Month.objects.create(name='Brazil')
        self.event = Event.objects.create(
            name='joe', 
            date=date(2023, 4, 23), 
            time=time(5), 
            venue=venue, 
            description='aa pplace', 
            month=month
        )

    def test_create_event(self):
        event = Event.objects.get(description='aa pplace')
        self.assertEqual(self.event, event)


class TrialModelTest(APITestCase):

    def setUp(self):
        self.booking = TrialBooking.objects.create(
            student='helen',
            minor=False,
            instrument='kazoo',
            date=date(2021, 6, 2),
            time=time(7)
        )

    def test_create_trial(self):
        booking = TrialBooking.objects.get(instrument='kazoo')
        self.assertEqual(self.booking, booking)
