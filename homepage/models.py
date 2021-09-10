from django.db import models


class ContactForm(models.Model):
    name = models.CharField(max_length=120)
    email = models.EmailField()
    phone = models.IntegerField()
    preferred_call_date = models.CharField(max_length=50)
    message = models.TextField()

    def __str__(self):
        return self.name


