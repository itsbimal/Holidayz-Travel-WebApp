# Generated by Django 3.2.6 on 2021-08-28 16:51

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('admins', '0008_place_offer'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='place',
            name='offer',
        ),
    ]
