# Generated by Django 3.2.6 on 2021-09-08 12:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0002_auto_20210907_2148'),
    ]

    operations = [
        migrations.RenameField(
            model_name='contactform',
            old_name='preferred_date',
            new_name='preferred_call_date',
        ),
        migrations.AlterField(
            model_name='contactform',
            name='email',
            field=models.EmailField(max_length=254),
        ),
    ]
