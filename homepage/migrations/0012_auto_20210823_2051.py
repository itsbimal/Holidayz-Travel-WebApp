# Generated by Django 3.2.5 on 2021-08-23 15:06

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0011_alter_country_desc'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Country',
        ),
        migrations.RemoveField(
            model_name='place',
            name='offers',
        ),
        migrations.DeleteModel(
            name='Offer',
        ),
        migrations.DeleteModel(
            name='Place',
        ),
    ]