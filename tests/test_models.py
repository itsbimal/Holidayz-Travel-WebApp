from django.test import TestCase
from django.contrib.auth import get_user_model

from django.test.testcases import TestCase
from dashboard.models import Profile, Booking
from django.conf import settings

User = get_user_model()


class UserTest(TestCase):
    def setUp(self):
        users = User(username="bimal", email="bimal@shcomp.com")
        users.is_staff = True
        users.is_superuser = True
        users.set_password("Hello_Django")
        user_pass = "Hello_Django"
        self.user_pass = user_pass
        self.users = users

        users.save()

    def test_user_exists(self):
        user_count = User.objects.all().count()
        print(user_count)
        self.assertEqual(user_count, 1)
        self.assertNotEqual(user_count, 0)

    # def test_login_url(self):
    #     login_url = settings.LOGIN_URL
    #     data ={'username':'mylod','password':''}
    #     response = self.client.post(login_url,data,follow=True)
    #     status_code = self.client.status_code
    #     redirect_path = response.request.get("PATH_INFO")
    #     self.assertNotEqual(redirect_path, settings.LOGIN_REDIRECT_URL)
    #     self.assertEqual(status_code,200)

