from django import forms


# 机构forms
class StructureForm(forms.Form):
    title = forms.CharField(required=True)
    type = forms.CharField(required=True)
    parent = forms.CharField()
