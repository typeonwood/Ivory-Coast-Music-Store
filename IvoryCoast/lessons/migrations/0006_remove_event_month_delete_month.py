# Generated by Django 4.2.2 on 2023-06-21 16:42

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('lessons', '0005_remove_event_featured'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='event',
            name='month',
        ),
        migrations.DeleteModel(
            name='Month',
        ),
    ]
