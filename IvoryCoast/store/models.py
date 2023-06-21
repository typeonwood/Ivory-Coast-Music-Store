from django.db import models

class StoreItem(models.Model):
    title = models.CharField(max_length=255)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    description = models.TextField()
    inventory = models.SmallIntegerField()
    featured = models.BooleanField(default=False)
    def __str__(self) -> str:
        return self.title
