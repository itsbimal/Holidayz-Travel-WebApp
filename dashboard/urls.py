from django.urls import path
from . import views
from django.http import HttpResponse
from django.contrib.auth import views as auth_views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.index_page),
    path('logout/', views.logout_view),
    path('ecard/', views.ecard, name='ecard'),
    path('country/', views.country_list),
    path('profile/', views.profile, name='profile'),
    path('showplaces/', views.show_places),
    path('details/<str:name>', views.place_details, name='details'),
    path('places/<int:c_id>', views.destination_list, name='destination_list'),
    path('watchlist/', views.watchlist, name='watchlist'),
    path('showwatchlist/', views.show_watchlist, name='showwatchlist'),
    path('areyousure/', views.areyou_sure),
    path('booking/<int:place_id>', views.booking),
    path('summary/', views.booking_summary),
    path('password_change', auth_views.PasswordChangeView.as_view(template_name='dashboard/password_change.html')),
    path('password_change_done',
         auth_views.PasswordResetDoneView.as_view(template_name='dashboard/password_change_done.html'),
         name='password_change_done'),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
