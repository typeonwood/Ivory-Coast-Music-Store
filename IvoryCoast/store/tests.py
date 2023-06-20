from rest_framework.test import APITestCase
from .models import StoreItem
from .serializers import StoreSerializer
from rest_framework.reverse import reverse
from rest_framework import status


class StoreModelTest(APITestCase):

    def setUp(self):
        self.new_item = StoreItem.objects.create(title='beluga', price=1000, description='woah this is cool', inventory=12)

    def test_create_item(self):
        self.item = StoreItem.objects.get(title='beluga')
        self.assertEqual(self.new_item, self.item)


class StoreViewTest(APITestCase):
     
    def setUp(self):
        self.item = StoreItem.objects.create(title='beluga', price=1000, description='woah this is cool', inventory=12)

    def test_get_item_list(self):
        response = self.client.get(reverse('store-list'))
        item_list = StoreItem.objects.all()
        serialized_list = StoreSerializer(item_list, many=True)
        self.assertEqual(response.data, serialized_list.data)
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    def test_get_valid_single_item(self):
        response = self.client.get(reverse('store-detail', kwargs={'pk': self.item.pk}))
        store_item = StoreItem.objects.get(pk=self.item.pk)
        serialized_item = StoreSerializer(store_item, many=False)
        self.assertEqual(response.data, serialized_item.data)
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    def test_get_invalid_single_item(self):
        response = self.client.get(reverse('store-detail', kwargs={'pk': 300}))
        self.assertEqual(response.status_code, status.HTTP_404_NOT_FOUND)

