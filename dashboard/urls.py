from django.urls import path
from . import views

urlpatterns = [
    path('', views.user_dashboard),
    path('addcountry/', views.add_country)
]
