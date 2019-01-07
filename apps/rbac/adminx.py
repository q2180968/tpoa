from rbac.models import *
import xadmin
import xadmin.views


# 设置权限菜单类


class MenuAdmin(object):
    list_display = ['title', 'parent', 'code', 'url']


xadmin.site.register(Menu, MenuAdmin)


# 设置角色类
class RoleAdmin(object):
    pass


xadmin.site.register(Role, RoleAdmin)
