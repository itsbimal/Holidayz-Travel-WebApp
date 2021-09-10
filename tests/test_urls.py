from django.test import SimpleTestCase
from django.urls import reverse, resolve
from homepage.views import index_page, login, pricing_page
from dashboard.views import profile, ecard


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
