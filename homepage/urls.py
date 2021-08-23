from django.urls import path
from . import views
from django.http import HttpResponse

from django.conf import settings
from django.conf.urls.static import static


def testfcn(request):
    return HttpResponse("This is Test and its working! in /home url")


urlpatterns = [
    path('', views.index_page),
    path('account/', views.account),
    path('pricing/',views.pricing_page),
    path('country/', views.country_list),
    path('home/', testfcn)
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)