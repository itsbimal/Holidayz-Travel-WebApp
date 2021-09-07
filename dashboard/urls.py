from django.urls import path
from . import views
from django.http import HttpResponse

from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.index_page),
    path('logout/', views.logout_view),
    path('ecard/', views.ecard),
    path('country/', views.country_list),
    path('profile/', views.profile),
    path('showplaces/', views.show_places),
    path('details/<str:name>', views.place_details, name='details'),
    path('places/<int:c_id>', views.destination_list, name='destination_list'),
    path('watchlist/', views.watchlist, name='watchlist'),
    path('showwatchlist/', views.show_watchlist, name='showwatchlist'),
    path('addbooking/', views.add_booking, name='addbooking'),
    path('deletebooking/<int:booking_id>', views.delete_booking),
    path('booking/<int:place_id>', views.booking),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
