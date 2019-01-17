from django import forms


# 机构forms
class MenuForm(forms.Form):
    title = forms.CharField(required=True)
    parent = forms.CharField(required=False)
    icon = forms.CharField(required=False)
    is_top = forms.BooleanField(widget=forms.CheckboxInput(), required=False)
    code = forms.CharField(required=False)
    url = forms.CharField(required=False)


# 角色表单
class RoleForm(forms.Form):
    title = forms.CharField(required=True)
    roles = forms.MultipleChoiceField()
