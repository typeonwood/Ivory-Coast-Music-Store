from django.db import models

class Venue(models.Model):
    name = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    phone = models.PositiveBigIntegerField()
    def __str__(self) -> str:
        return self.name

class Event(models.Model):
    name = models.CharField(max_length=255)
    date = models.DateField()
    time = models.TimeField()
    venue = models.ForeignKey(Venue, on_delete=models.PROTECT)
    description = models.CharField(max_length=255)
    def __str__(self) -> str:
        return self.name
    
class TrialBooking(models.Model):
    student = models.CharField(max_length=255)
    minor = models.BooleanField()
    guardian = models.CharField(max_length=255, blank=True)
    instrument = models.CharField(max_length=255)
    date = models.DateField()
    time = models.TimeField()
    def __str__(self) -> str:
        return str(self.date) + ' - ' + self.student

