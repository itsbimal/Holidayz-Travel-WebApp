# Generated by Django 3.2.6 on 2021-09-18 12:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard', '0031_alter_booking_status'),
    ]

    operations = [
        migrations.AlterField(
            model_name='booking',
            name='status',
            field=models.CharField(choices=[('In-Review', 'In-Review'), ('Confirmed', 'Confirmed'), ('Denied', 'Denied')], max_length=200, null=True),
        ),
        migrations.AlterField(
            model_name='profile',
            name='profile_pic',
            field=models.FileField(default='static/images/user.png', upload_to='static/uploads/profile'),
        ),
    ]