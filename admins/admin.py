from django.contrib import admin
from .models import Country, Offer, Place

# Register your models here.

admin.site.register(Country)
admin.site.register(Offer)


# class PlaceAdmin(admin.ModelAdmin):
#     list_display = ('Name', 'Description')
#     # list_editable = ('status',)


admin.site.register(Place)
