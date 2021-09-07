from django.db import models


# Country
class Country(models.Model):
    Name = models.CharField(max_length=120)
    Description = models.CharField(max_length=60)
    Number = models.IntegerField()
    video_url = models.URLField()
    Image = models.ImageField(upload_to="static/uploads/country")

    def __str__(self):
        return self.Name


# Offers included
class Offer(models.Model):
    offer_name = models.CharField(max_length=50)
    adventure = models.CharField(max_length=100)
    accommodation = models.CharField(max_length=100)
    extra = models.TextField()

    def __str__(self):
        return self.offer_name


# Places inside country
class Place(models.Model):
    dest_name = models.CharField(max_length=50)
    dest_type = models.CharField(max_length=50)
    dest_price = models.IntegerField(max_length=10)
    dest_desc = models.TextField()
    dest_location = models.CharField(max_length=120)
    dest_image = models.ImageField(upload_to="static/uploads/destination")
    day_one = models.TextField()
    day_two = models.TextField()
    day_three = models.TextField()
    created_date = models.DateTimeField(auto_now_add=True, null=True)
    country = models.ForeignKey(Country, on_delete=models.CASCADE)
