from django.contrib import admin
from .models import Country, Offer, Place

# Register your models here.

admin.site.register(Country)
admin.site.register(Offer)


class PlaceAdmin(admin.ModelAdmin):
    list_display = ('offers', 'price', 'status')
    list_editable = ('status',)


admin.site.register(Place, PlaceAdmin)
