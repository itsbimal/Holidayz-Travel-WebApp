from django.urls import path
from . import views
from django.http import HttpResponse
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.index_page),
    path('login/', views.login),
    path('register/', views.register),
    path('pricing/',views.pricing_page),
    path('country/', views.country_list),
]