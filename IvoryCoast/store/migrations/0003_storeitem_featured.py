# Generated by Django 4.2.2 on 2023-06-21 02:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0002_rename_store_storeitem'),
    ]

    operations = [
        migrations.AddField(
            model_name='storeitem',
            name='featured',
            field=models.BooleanField(default=False),
        ),
    ]
