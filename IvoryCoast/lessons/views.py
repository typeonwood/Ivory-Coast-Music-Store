from rest_framework.viewsets import GenericViewSet
from rest_framework.views import APIView
from rest_framework.mixins import ListModelMixin, RetrieveModelMixin
from rest_framework.response import Response
from rest_framework import status
from rest_framework.permissions import IsAuthenticated
from .models import Event
from .serializers import EventSerializer, TrialSerializer

class EventViewSet(GenericViewSet, ListModelMixin, RetrieveModelMixin):
    queryset = Event.objects.all()
    serializer_class = EventSerializer
    search_fields = ['name', 'venue__name', 'venue__address']
    ordering_fields = ['date']
    filterset_fields = {'date': ['gte', 'lte']}

class TrialBookingView(APIView):
    permission_classes = [IsAuthenticated]
    def post(self, request):
        serializer = TrialSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        else:
            return Response('Oops! Invalid information', status=status.HTTP_400_BAD_REQUEST)
