# Generated by Django 3.2.5 on 2021-08-24 04:32

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('admins', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='country',
            old_name='desc',
            new_name='Description',
        ),
        migrations.RenameField(
            model_name='country',
            old_name='title',
            new_name='Name',
        ),
        migrations.RenameField(
            model_name='country',
            old_name='image',
            new_name='Upload_Image',
        ),
    ]