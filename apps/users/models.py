from django.db import models
from django.contrib.auth.models import AbstractUser
from rbac.models import Role
from datetime import datetime


# Create your models here.

class UserProfile(AbstractUser):
    '''
    用户表
    需要在setting设置自定义认证模型AUTH_USER_MODEL = 'users.UserProfile'
    '''
    user_name = models.CharField(max_length=32, default='', verbose_name='真实姓名')
    birthday = models.DateTimeField(null=True, blank=True, verbose_name='生日')
    gender = models.CharField(max_length=10, choices=(('male', '男'), ('famale', '女')), default='male',
                              verbose_name='性别')
    mobile = models.CharField(max_length=11, default='', verbose_name='电话')
    email = models.EmailField(max_length=100, verbose_name='邮箱')
    image = models.ImageField(upload_to='image/%Y/%m', default='image/default.jpg', max_length=100, null=True,
                              blank=True)

    create_date = models.DateTimeField(default=datetime.now, verbose_name='创建时间')
    roles = models.ManyToManyField('rbac.Role', verbose_name='角色', blank=True)
    post = models.ManyToManyField('Post', through='UserPost', verbose_name='职位')

    class Meta:
        verbose_name = '用户信息'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.user_name


class Structure(models.Model):
    '''
    组织架构
    '''
    type_choices = (('department', "部门"), ('office', '科室'))
    title = models.CharField(max_length=60, verbose_name='名称')
    type = models.CharField(max_length=20, choices=type_choices, default='department', verbose_name='类型')
    parent = models.ForeignKey('self', null=True, blank=True, verbose_name='父类架构')

    class Meta:
        verbose_name = '组织架构'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title


class Post(models.Model):
    '''
    职务
    '''
    name = models.CharField(max_length=50, verbose_name='职务名称')
    structure = models.ForeignKey('Structure', null=True, blank=True, verbose_name='部门')

    class Meta:
        verbose_name = '职务'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class UserPost(models.Model):
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, verbose_name='用户')
    post = models.ForeignKey(Post, on_delete=models.CASCADE, verbose_name='职位')

    # 额外字段
    is_primary = models.BooleanField(default=False, verbose_name='是否主职位')
