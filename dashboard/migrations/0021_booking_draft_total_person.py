# Generated by Django 3.2.6 on 2021-09-06 15:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard', '0020_remove_booking_draft_country'),
    ]

    operations = [
        migrations.AddField(
            model_name='booking_draft',
            name='total_person',
            field=models.IntegerField(default=2),
            preserve_default=False,
        ),
    ]
