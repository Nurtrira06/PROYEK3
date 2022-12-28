from django.urls import path
from .views import home, profile, predict, result, RegisterView

urlpatterns = [
    path('', home, name='users-home'),
    path('register/', RegisterView.as_view(), name='users-register'),
    path('profile/', profile, name='users-profile'),
    path('predict/', predict, name='predict'),
    path('result/', result, name='result')
]
