from django.urls import path
from . import views

urlpatterns = [
    path('', views.admin_dashboard),
    path('addcountry/', views.add_country),
    path('deletecountry/<int:country_id>', views.delete_country),

]
