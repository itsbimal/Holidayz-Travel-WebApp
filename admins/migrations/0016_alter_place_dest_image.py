# Generated by Django 3.2.6 on 2021-09-03 11:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('admins', '0015_place_dest_price'),
    ]

    operations = [
        migrations.AlterField(
            model_name='place',
            name='dest_image',
            field=models.ImageField(upload_to='static/uploads/destination'),
        ),
    ]
