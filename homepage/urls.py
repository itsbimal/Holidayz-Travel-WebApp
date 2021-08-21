from django.urls import path
from . import views
from django.http import HttpResponse


def testfcn(request):
    return HttpResponse("This is Test and its working! in /home url")


urlpatterns = [
    path('', views.index_page),
    path('pricing/',views.pricing_page),

]