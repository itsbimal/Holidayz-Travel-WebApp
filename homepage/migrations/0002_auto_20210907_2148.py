# Generated by Django 3.2.6 on 2021-09-07 16:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='ContactForm',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=120)),
                ('email', models.CharField(max_length=60)),
                ('phone', models.IntegerField(max_length=10)),
                ('preferred_date', models.CharField(max_length=50)),
                ('message', models.TextField()),
            ],
        ),
        migrations.DeleteModel(
            name='Contact',
        ),
    ]
