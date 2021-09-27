from django.forms import ModelForm
from .models import Country, Offer, Place
from dashboard.models import Booking
from django.contrib.auth.models import User

class AddCountry(ModelForm):
    class Meta:
        model = Country
        fields = '__all__'

class StatusForm(ModelForm):
    class Meta:
        model=Booking
        fields=['status']

class AddAdmin(ModelForm):
    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'username', 'email', 'is_staff')


class UpdateCountry(ModelForm):
    class Meta:
        model = Country
        fields = '__all__'


class UpdatePlace(ModelForm):
    class Meta:
        model = Place
        fields = '__all__'




