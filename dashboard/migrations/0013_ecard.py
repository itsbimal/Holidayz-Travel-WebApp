# Generated by Django 3.2.6 on 2021-08-28 06:44

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('dashboard', '0012_auto_20210823_2051'),
    ]

    operations = [
        migrations.CreateModel(
            name='ecard',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
        ),
    ]