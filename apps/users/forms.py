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


# 用户表单
class UserForm(forms.Form):
    user_name = forms.CharField(required=True, min_length=5)
    real_name = forms.CharField(required=True, min_length=5)
    email = forms.EmailField(required=True)
    password = forms.CharField(required=True, min_length=6)
    password2 = forms.CharField(required=True, min_length=6)
    mobile = forms.CharField(required=True, min_length=11)
    roles = forms.MultipleChoiceField()
    posts = forms.MultipleChoiceField()
