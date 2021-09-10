from django.urls import path
from . import views
from django.http import HttpResponse
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.index_page, name='home_index'),
    path('login/', views.login, name='login'),
    path('register/', views.register),
    path('pricing/',views.pricing_page, name='price'),
    path('country/', views.country_list, name='country'),
    path('contact/', views.contact, name='contact')

]