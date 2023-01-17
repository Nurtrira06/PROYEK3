from apk_predict.models import Kanker
from django import forms
# form CRUD
class KankerForm(forms.ModelForm):
    class Meta:
        model = Kanker
        fields = "__all__"
