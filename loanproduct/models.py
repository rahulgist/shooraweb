from django.db import models

# Create your models here.
class loanproduct(models.Model):
    loan_title = models.CharField(max_length=50)
    loan_amount = models.CharField(max_length=150)
    loan_roi = models.CharField(max_length=150)
    loan_tenure = models.CharField(max_length=150)
    loan_image = models.FileField(upload_to="loan-product/",max_length=250,null=True,default=None)
    
