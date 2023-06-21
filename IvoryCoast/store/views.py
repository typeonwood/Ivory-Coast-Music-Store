from rest_framework.viewsets import GenericViewSet
from rest_framework.mixins import ListModelMixin, RetrieveModelMixin
from rest_framework.generics import ListAPIView
from .models import StoreItem
from .serializers import StoreSerializer

class StoreViewSet(GenericViewSet, ListModelMixin, RetrieveModelMixin):
    queryset = StoreItem.objects.all()
    serializer_class = StoreSerializer
    search_fields = ['title']
    ordering_fields = ['price', 'featured']
    filterset_fields = {'price': ['lte', 'gte']}

class FeaturedView(ListAPIView):
    queryset = StoreItem.objects.filter(featured=True)
    serializer_class = StoreSerializer