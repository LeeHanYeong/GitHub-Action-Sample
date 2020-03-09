from django.test import TestCase


class OtherTest(TestCase):
    URL_INDEX = '/'

    def test_index_view(self):
        response = self.client.get(self.URL_INDEX)
        self.assertEqual(response.status_code, 200)
