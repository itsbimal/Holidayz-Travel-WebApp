# Generated by Django 3.2.6 on 2021-09-06 13:19

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard', '0019_booking_draft_country'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='booking_draft',
            name='country',
        ),
    ]
