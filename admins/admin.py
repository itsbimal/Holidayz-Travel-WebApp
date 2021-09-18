from django.contrib import admin
from .models import Country, Offer, Place
from dashboard.models import Booking

# Register your models here.

admin.site.register(Country)
admin.site.register(Offer)
admin.site.register(Booking)


# class PlaceAdmin(admin.ModelAdmin):
#     list_display = ('Name', 'Description')
#     # list_editable = ('status',)


admin.site.register(Place)
