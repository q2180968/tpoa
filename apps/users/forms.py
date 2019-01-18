from django import forms


# 机构forms
class StructureForm(forms.Form):
    title = forms.CharField(required=True)
    type = forms.CharField(required=True)
    parent = forms.CharField()


# 登录验证forms
class LoginForm(forms.Form):
    username = forms.CharField(required=True, error_messages={"required": "请填写用户名"})
    password = forms.CharField(required=True, error_messages={"required": u"请填写密码"})
