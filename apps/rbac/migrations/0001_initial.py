# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2019-02-27 07:24
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Menu',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=32, unique=True, verbose_name='菜单名称')),
                ('is_top', models.BooleanField(default=False, verbose_name='首页显示')),
                ('icon', models.CharField(blank=True, max_length=50, null=True, verbose_name='图标')),
                ('code', models.CharField(blank=True, max_length=50, null=True, verbose_name='编码')),
                ('url', models.CharField(blank=True, max_length=120, null=True, unique=True, verbose_name='链接路径')),
                ('is_show', models.BooleanField(default=0)),
                ('parent', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='rbac.Menu', verbose_name='父菜单')),
            ],
            options={
                'verbose_name': '菜单',
                'verbose_name_plural': '菜单',
            },
        ),
        migrations.CreateModel(
            name='Role',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=32)),
                ('permissions', models.ManyToManyField(blank=True, to='rbac.Menu')),
            ],
            options={
                'verbose_name': '角色',
                'verbose_name_plural': '角色',
            },
        ),
    ]
