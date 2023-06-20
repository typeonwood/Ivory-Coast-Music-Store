from rest_framework import serializers
from .models import StoreItem

class StoreSerializer(serializers.ModelSerializer):
    class Meta:
        model = StoreItem
        fields = '__all__'