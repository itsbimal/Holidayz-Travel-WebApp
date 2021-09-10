from django.test import TestCase
from .models import Profile


class ModelTest(TestCase):
    def setUp(self):
        self.type = Profile(firstname='Bimal')

    def test_profile(self):
        self.assertEqual(str(self.type), 'Bimal')
