from django.db import models


class ContactForm(models.Model):
    name = models.CharField(max_length=120)
    email = models.CharField(max_length=60)
    phone = models.IntegerField(max_length=10)
    preferred_date = models.CharField(max_length=50)
    message = models.TextField()

    def __str__(self):
        return self.name


