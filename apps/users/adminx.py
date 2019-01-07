from users.models import *
import xadmin
import xadmin.views


# 设置主题信息
class BaseSetting(object):
    enable_themes = True
    # use_bootswatch = True


xadmin.site.register(xadmin.views.BaseAdminView, BaseSetting)


# 设置LOGO，尾部信息
class GloabSetting(object):
    site_title = '高新区OA后台管理'
    site_footer = '@高新区OA后台管理'
    # 将菜单设置为可折叠
    menu_style = 'accordion'


xadmin.site.register(xadmin.views.CommAdminView, GloabSetting)

# class EmailVerifyRecordAdmin(object):
#     list_display = ['code', 'email', 'send_type', 'send_time']
#     list_filter = ['email', 'send_type', 'send_time']
#     search_fields = ['email']
#
#
# xadmin.site.register(EmailVerifyRecord, EmailVerifyRecordAdmin)

# 设置用户类
xadmin.site.unregister(UserProfile)


class UserProfileAdmin(object):
    list_display = ['username']


xadmin.site.register(UserProfile, UserProfileAdmin)


# 设置部门类
class StructureAdmin(object):
    list_display = ['title', 'type', 'parent']


xadmin.site.register(Structure, StructureAdmin)


# 设置职位类


class PostAdmin(object):
    pass


xadmin.site.register(Post, PostAdmin)
