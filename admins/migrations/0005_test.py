# Generated by Django 3.2.6 on 2021-08-28 15:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('admins', '0004_auto_20210828_2051'),
    ]

    operations = [
        migrations.CreateModel(
            name='test',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('continents', models.CharField(max_length=50)),
            ],
        ),
    ]
