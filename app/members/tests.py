from django.contrib.auth import get_user_model
from django.test import TestCase

from members.models import User


class UserModelTest(TestCase):
    def test_custom_user_model(self):
        user_model = get_user_model()
        self.assertEqual(user_model, User)
