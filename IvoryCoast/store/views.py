from rest_framework.viewsets import GenericViewSet
from rest_framework.mixins import ListModelMixin, RetrieveModelMixin
from rest_framework.generics import ListAPIView
from .models import StoreItem
from .serializers import StoreSerializer

class StoreViewSet(GenericViewSet, ListModelMixin, RetrieveModelMixin):
    queryset = StoreItem.objects.all()
    serializer_class = StoreSerializer
    search_fields = ['name']
    ordering_fields = ['price', 'featured']
    filterset_fields = ['price']

class FeaturedView(ListAPIView):
    queryset = StoreItem.objects.filter(featured=True)
    serializer_class = StoreSerializer