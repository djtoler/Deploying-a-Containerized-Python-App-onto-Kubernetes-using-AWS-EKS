# Generated by Django 3.2.4 on 2021-06-19 14:24

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0006_stripemodel_customer_id'),
    ]

    operations = [
        migrations.RenameField(
            model_name='stripemodel',
            old_name='email',
            new_name='stripe_email',
        ),
    ]
