# from django.contrib import admin
from django.urls import path
from django.conf.urls import include,url
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    # path('admin/', admin.site.urls),
    path('', include('homepage.urls')),
    path('dashboard/', include('dashboard.urls')),
    path('admins/', include('admins.urls')),

]

