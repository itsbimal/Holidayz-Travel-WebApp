from django.urls import path
from . import views
from django.http import HttpResponse

from django.conf import settings
from django.conf.urls.static import static



urlpatterns = [
    path('', views.index_page),
    path('logout/', views.logout_view),
    path('ecard/', views.ecard),
    path('country/',views.country_list)
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)