from django.db import models


# Create your models here.
class Menu(models.Model):
    '''
    菜单表
    '''
    title = models.CharField(max_length=32, unique=True, verbose_name='菜单名称')
    parent = models.ForeignKey('self', null=True, blank=True, verbose_name='父菜单')
    is_top = models.BooleanField(default=False, verbose_name="首页显示")
    icon = models.CharField(max_length=50, null=True, blank=True, verbose_name="图标")
    code = models.CharField(max_length=50, null=True, blank=True, verbose_name="编码")
    url = models.CharField(max_length=120, unique=True, null=True, blank=True, verbose_name="链接路径")
    is_show = models.BooleanField(default=0)

    def __str__(self):
        title_list = [self.title]
        p = self.parent
        while p:
            title_list.append(p.title)
            p = p.parent
        return '-'.join(title_list)

    class Meta:
        verbose_name = "菜单"
        verbose_name_plural = verbose_name

    @classmethod
    def getMenuRequestUrl(self, url):
        ret = dict(menu=Menu.objects.get(url=url))
        return ret


class Role(models.Model):
    '''
    角色：绑定权限
    '''
    title = models.CharField(max_length=32)
    permissions = models.ManyToManyField("Menu", blank=True)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = '角色'
        verbose_name_plural = verbose_name
