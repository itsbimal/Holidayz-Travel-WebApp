# Generated by Django 3.2.6 on 2021-09-06 15:28

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('admins', '0018_auto_20210906_1943'),
        ('dashboard', '0021_booking_draft_total_person'),
    ]

    operations = [
        migrations.AddField(
            model_name='booking',
            name='offer',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='admins.offer'),
        ),
    ]
