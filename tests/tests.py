from django.test import TestCase
from django.contrib.auth import get_user_model

from django.test.testcases import TestCase
from dashboard.models import Profile, Booking
from django.conf import settings
from django.test import SimpleTestCase
from django.urls import reverse, resolve
from homepage.views import index_page, login, pricing_page
from dashboard.views import profile, ecard


User = get_user_model()

class TestUrls(SimpleTestCase):

    def test_index_url(self):
        url = reverse('home_index')
        print(resolve(url))
        self.assertEqual(resolve(url).func, index_page)

    def test_login_url(self):
        url = reverse('login')
        print(resolve(url))
        self.assertEqual(resolve(url).func, login)

    def test_price_url(self):
        url = reverse('price')
        print(resolve(url))
        self.assertEqual(resolve(url).func, pricing_page)

    def test_ecard_url(self):
        url = reverse('ecard')
        print(resolve(url))
        self.assertEqual(resolve(url).func, ecard)

    def test_profile_url(self):
        url = reverse('profile')
        print(resolve(url))
        self.assertEqual(resolve(url).func, profile)


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


