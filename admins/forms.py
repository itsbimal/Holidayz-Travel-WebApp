from django.forms import ModelForm
from .models import Country, Offer, Place
from dashboard.models import Booking

class AddCountry(ModelForm):
    class Meta:
        model = Country
        fields = '__all__'

class StatusForm(ModelForm):
    class Meta:
        model=Booking
        fields=['status']


