from django.urls import path
from .views import KankerView

urlpatterns=[
    path('kanker/', KankerView.as_view(), name='kanker_list'),
    path('kanker/<int:id>', KankerView.as_view(), name='kanker_process')
]