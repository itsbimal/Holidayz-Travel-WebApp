# Generated by Django 3.2.6 on 2021-09-06 17:52

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard', '0024_remove_booking_contact_no'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='booking',
            name='offer',
        ),
    ]