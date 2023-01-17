from django.urls import path, include
from .views import KankerView
from apk_predict import views

urlpatterns=[
    path('kanker/', KankerView.as_view(), name='kanker_list'),
    path('kanker/<int:id>', KankerView.as_view(), name='kanker_process'),

]