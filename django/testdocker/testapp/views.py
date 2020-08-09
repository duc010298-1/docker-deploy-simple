import json
import logging

from django.db import connection
from django.http import HttpResponse
from rest_framework.response import Response
from rest_framework.views import APIView

from .database import Database

logger = logging.getLogger("django")


class TestView(APIView):
    def get(self, request):
        try:
            database = Database()
            with connection.cursor() as cursor:
                cursor.execute("select * from TestTable")
                data = database.dictfetchall(cursor)

            return Response({
                "data": data
            })
        except Exception as ex:
            # Log error message to file
            logger.error('error occurs ' + json.dumps(ex.args))
            # Response returned with failed status and message error
            return Response({
                "data": "error"
            })
