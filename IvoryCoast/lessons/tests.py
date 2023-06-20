from rest_framework.test import APITestCase, APIClient
from .models import Month, Venue, Event, TrialBooking
from datetime import date, time
from rest_framework.reverse import reverse
from rest_framework.test import force_authenticate
from .serializers import EventSerializer
from rest_framework import status
from django.contrib.auth.models import User
import json


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


class TestEventView(APITestCase):

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

    def test_get_item_list(self):
        response = self.client.get(reverse('event-list'))
        item_list = Event.objects.all()
        serialized_list = EventSerializer(item_list, many=True)
        self.assertEqual(response.data, serialized_list.data)
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    def test_get_valid_single_item(self):
        response = self.client.get(reverse('event-detail', kwargs={'pk': self.event.pk}))
        store_item = Event.objects.get(pk=self.event.pk)
        serialized_item = EventSerializer(store_item, many=False)
        self.assertEqual(response.data, serialized_item.data)
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    def test_get_invalid_single_item(self):
        response = self.client.get(reverse('event-detail', kwargs={'pk': 0}))
        self.assertEqual(response.status_code, status.HTTP_404_NOT_FOUND)


class TestAuthenticatedTrialView(APITestCase):

    def setUp(self):
        self.user = User.objects.create_superuser(username='testy', password='testy')
        self.client = APIClient()
        self.client.force_authenticate(user=self.user)
        self.valid_payload = {
            'student': 'bo',
            'minor': True,
            'guardian': 'ur mom',
            'instrument': 'crying',
            'date': str(date(2023, 5, 16)),
            'time': str(time(5))
        }
        self.invalid_payload = {
            'student': 'bo',
            'guardian': 'ur mom',
            'instrument': 'cry',
            'date': str(date(2023, 5, 16)),
            'time': str(time(5))
        }

    def test_create_valid_trial(self):
        response = self.client.post(
            reverse('book'),
            data = json.dumps(self.valid_payload),
            content_type = 'application/json'
        )
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)

    def test_create_invalid_trial(self):
        response = self.client.post(
            reverse('book'),
            data = json.dumps(self.invalid_payload),
            content_type = 'application/json'
        )
        self.assertEqual(response.status_code, status.HTTP_400_BAD_REQUEST)


class TestAnonymousTrialView(APITestCase):

    def setUp(self):
        self.client = APIClient()
        self.payload = {
            'student': 'bo',
            'minor': True,
            'guardian': 'ur mom',
            'instrument': 'crying',
            'date': str(date(2023, 5, 16)),
            'time': str(time(5))
        }

    def test_create_anonymous(self):
        response = self.client.post(
            reverse('book'),
            data = json.dumps(self.payload),
            content_type = 'application/json'
        )
        self.assertEqual(response.status_code, status.HTTP_403_FORBIDDEN)
