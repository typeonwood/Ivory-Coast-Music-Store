from django.contrib import admin
from .models import Month, Venue, Event, TrialBooking

admin.site.register(Month)
admin.site.register(Venue)
admin.site.register(Event)
admin.site.register(TrialBooking)
