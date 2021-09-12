from django.test import TestCase
from django.contrib.auth import get_user_model
from dashboard.models import Booking

User = get_user_model()


class UserTest(TestCase):
    def setUp(self):
        users = User(username="bimal", email="bimal@shcomp.com")
        users.is_staff = True
        users.is_superuser = True
        users.set_password("Hello_Python")
        user_pass = "Hello_Python"
        self.user_pass = user_pass
        self.users = users

        users.save()

    def test_user_exists(self):
        user_count = User.objects.all().count()
        print(user_count)
        self.assertEqual(user_count, 1)
        self.assertNotEqual(user_count, 0)


