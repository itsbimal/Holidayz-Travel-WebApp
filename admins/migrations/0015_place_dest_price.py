# Generated by Django 3.2.6 on 2021-09-03 02:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('admins', '0014_country_number'),
    ]

    operations = [
        migrations.AddField(
            model_name='place',
            name='dest_price',
            field=models.IntegerField(default=2000, max_length=10),
            preserve_default=False,
        ),
    ]
