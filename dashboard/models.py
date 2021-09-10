import random

from django.core.validators import MinValueValidator, MaxValueValidator
from django.db import models
from django.contrib.auth.models import User
from django.http import HttpResponse

from admins.models import Place, Country, Offer


def random_ecard():
    return str(random.randint(1111111111111111, 9999999999999999))


def random_cvv():
    return str(random.randint(111, 999))


class Profile(models.Model):
    user = models.OneToOneField(User, null=True, on_delete=models.CASCADE)
    firstname = models.CharField(max_length=50)
    lastname = models.CharField(max_length=50)
    username = models.CharField(max_length=50)
    email = models.EmailField()
    phone = models.CharField(max_length=10)
    profile_pic = models.FileField(upload_to='static/uploads/profile', default='static/images/prof.png')
    ecard_no = models.CharField(max_length=16, default=random_ecard)
    ecard_cvv = models.CharField(max_length=3, default=random_cvv)
    created_date = models.DateTimeField(auto_now_add=True)


# def get_all_places_byid(country_id):
#     if country_id:
#         return Place.objects.filter(country = country_id)
#     else:
#         return HttpResponse("Invalid")

class Watchlist(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    place = models.ForeignKey(Place, on_delete=models.CASCADE)
    person = models.IntegerField( default=1)


class Booking_Draft(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    place = models.ForeignKey(Place, on_delete=models.CASCADE)
    total_person = models.IntegerField(default=2)


class Booking(models.Model):
    STATUS = (
        ('In-Review', 'In-Review'),
        ('Confirmed', 'Confirmend'),
    )

    place = models.ForeignKey(Place, null=True, on_delete=models.CASCADE)
    user = models.ForeignKey(User, null=True, on_delete=models.CASCADE)
    offer = models.ForeignKey(Offer,null=True, on_delete=models.CASCADE)
    total_person = models.IntegerField(validators=[MinValueValidator(1), MaxValueValidator(15)])
    total_price = models.IntegerField(null=True)
    status = models.CharField(max_length=200, choices=STATUS, null=True)
    booked_date = models.DateField()
    created_date = models.DateTimeField(auto_now_add=True)
