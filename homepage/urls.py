from django.urls import path
from . import views
from django.http import HttpResponse
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('', views.index_page, name='home_index'),
    path('login/', views.login, name='login'),
    path('register/', views.register),
    path('pricing/',views.pricing_page, name='price'),
    path('country/', views.country_list, name='country'),
    path('contact/', views.contact, name='contact'),
    path('password_reset/',auth_views.PasswordResetView.as_view(template_name='homepage/password_reset_form.html'),name='password_reset'),
    path('password_reset/done/',auth_views.PasswordResetDoneView.as_view(template_name='homepage/password_reset_done.html'),name='password_reset_done'),
    path('reset/<uidb64>/<token>/',auth_views.PasswordResetConfirmView.as_view(template_name='homepage/password_reset_confirm.html'),name='password_reset_confirm'),
    path('reset/done/',auth_views.PasswordResetCompleteView.as_view(template_name='homepage/password_reset_complete.html'),name='password_reset_complete'),

]