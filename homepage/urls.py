from django.urls import path
from . import views
from django.http import HttpResponse


def testfcn(request):
    return HttpResponse("This is Test and its working!")


urlpatterns = [
    path('', views.index_page),

]