# Generated by Django 3.2.9 on 2021-12-02 16:18

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('products', '0003_product_keyword'),
        ('users', '0003_alter_user_password'),
    ]

    operations = [
        migrations.CreateModel(
            name='DeliveryStatus',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
            ],
            options={
                'db_table': 'delivery_status',
            },
        ),
        migrations.CreateModel(
            name='Order',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
            options={
                'db_table': 'orders',
            },
        ),
        migrations.CreateModel(
            name='OrderStatus',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
            ],
            options={
                'db_table': 'order_status',
            },
        ),
        migrations.CreateModel(
            name='OrderProduct',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('count', models.IntegerField(default=1)),
                ('tracking_number', models.CharField(max_length=500)),
                ('delivery_status', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='orders.deliverystatus')),
                ('order', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='orders.order')),
                ('product_option', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='products.productoption')),
            ],
            options={
                'db_table': 'order_products',
            },
        ),
        migrations.AddField(
            model_name='order',
            name='order_status',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='orders.orderstatus'),
        ),
        migrations.AddField(
            model_name='order',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='users.user'),
        ),
    ]
