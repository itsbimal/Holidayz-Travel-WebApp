from django.forms import ModelForm
from .models import Country, Offer, Place

class AddCountry(ModelForm):
    class Meta:
        model = Country
        fields = '__all__'

