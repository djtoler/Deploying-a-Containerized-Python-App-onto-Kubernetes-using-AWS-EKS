# Generated by Django 3.2.4 on 2021-06-17 15:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0003_alter_stripemodel_card_number'),
    ]

    operations = [
        migrations.AddField(
            model_name='stripemodel',
            name='email',
            field=models.EmailField(blank=True, max_length=254, null=True, unique=True),
        ),
    ]
