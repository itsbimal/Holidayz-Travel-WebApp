# Generated by Django 3.2.6 on 2021-09-07 11:38

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('admins', '0018_auto_20210906_1943'),
    ]

    operations = [
        migrations.RenameField(
            model_name='country',
            old_name='video_url',
            new_name='bg_url',
        ),
    ]