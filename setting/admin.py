from django.contrib import admin
from setting.models import setting
# Register your models here.

class SettingAdmin(admin.ModelAdmin):
    list_display= ('title','websiteUrl','contact_no','email')

admin.site.register(setting,SettingAdmin)
