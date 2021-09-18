# Generated by Django 3.2.6 on 2021-09-16 12:46

from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('admins', '0021_auto_20210910_0858'),
        ('dashboard', '0029_auto_20210912_1944'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Booking_Draftt',
            new_name='Booking_Draft',
        ),
        migrations.AlterField(
            model_name='booking',
            name='status',
            field=models.BooleanField(default=False),
        ),
    ]
