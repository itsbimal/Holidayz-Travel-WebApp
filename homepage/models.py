from django.db import models


# Country
class Country(models.Model):
    title = models.CharField(max_length=120)
    desc = models.CharField(max_length=60)
    image = models.ImageField(upload_to="static/uploads/country")

    def __str__(self):
        return self.title

# Offers included
class Offer(models.Model):
    duration = models.CharField(max_length=100)
    accommodation = models.CharField(max_length=100)
    extra = models.TextField()


# Places inside country
class Place(models.Model):
    title = models.CharField(max_length=120)
    image = models.ImageField(upload_to='static/uploads/place')
    desc = models.TextField()
    offers = models.ForeignKey(Offer, on_delete=models.CASCADE)
    price = models.PositiveIntegerField()
    status = models.BooleanField(default=True)