from rest_framework.serializers import ModelSerializer
from rest_framework.validators import UniqueTogetherValidator
from .models import Venue, Event, TrialBooking

class VenueSerializer(ModelSerializer):
    class Meta:
        model = Venue
        fields = ['name', 'address', 'phone']

class EventSerializer(ModelSerializer):
    venue = VenueSerializer()
    class Meta:
        model = Event
        validators = [
            UniqueTogetherValidator(
                queryset=Event.objects.all(),
                fields=['date', 'time']
            )
        ]
        fields = ['name', 'date', 'time', 'venue', 'description']

class TrialSerializer(ModelSerializer):
    class Meta:
        model = TrialBooking
        validators = [
            UniqueTogetherValidator(
                queryset=Event.objects.all(),
                fields=['date', 'time']
            )
        ]
        fields = '__all__'
