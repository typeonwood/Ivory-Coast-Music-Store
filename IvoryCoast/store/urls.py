from rest_framework.routers import SimpleRouter
from .views import StoreViewSet, FeaturedView
from django.urls import path, include

router = SimpleRouter()
router.register(r'store', StoreViewSet, basename='store')

urlpatterns = [
    path('', include(router.urls)),
    path('featured', FeaturedView.as_view(), name='featured')
]