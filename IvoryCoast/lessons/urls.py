from django.urls import path, include
from rest_framework.routers import SimpleRouter
from .views import EventViewSet, TrialBookingView

router = SimpleRouter()
router.register(r'event', EventViewSet, basename='event')

urlpatterns = [
    path('', include(router.urls)),
    path('book', TrialBookingView.as_view(), name='book'),
]