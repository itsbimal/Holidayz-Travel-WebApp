# Generated by Django 3.2.6 on 2021-09-06 13:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('admins', '0017_country_video_url'),
    ]

    operations = [
        migrations.RenameField(
            model_name='offer',
            old_name='durations',
            new_name='adventure',
        ),
        migrations.AddField(
            model_name='offer',
            name='offer_name',
            field=models.CharField(default=1, max_length=50),
            preserve_default=False,
        ),
    ]
