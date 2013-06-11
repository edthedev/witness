from django.db import models

class Submission(models.Model):
    '''A user submitted data bit.'''
    submitted_date = models.DateTimeField('Date Submitted')
    content = models.CharField(max_length=1000)
    signature = models.CharField(max_length=500)
