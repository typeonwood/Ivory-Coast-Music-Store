from rest_framework.viewsets import GenericViewSet
from rest_framework.mixins import ListModelMixin, RetrieveModelMixin
from .models import StoreItem
from .serializers import StoreSerializer

class StoreViewSet(GenericViewSet, ListModelMixin, RetrieveModelMixin):
    queryset = StoreItem.objects.all()
    serializer_class = StoreSerializer