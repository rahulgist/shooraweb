from django.contrib import admin
from policy.models import policy
# Register your models here.

class PolicyAdmin(admin.ModelAdmin):
    list_display= ('policy_type','policy_title','policy_description')

admin.site.register(policy,PolicyAdmin)
