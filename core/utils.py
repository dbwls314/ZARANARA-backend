import jwt, os

from django.http    import JsonResponse

from zara.settings  import SECRET_KEY, ALGORITHM
from users.models   import User

def SigninDecorator(func):
    def wrapper(self, request, *args, **kwargs):
        try:
            token        = request.headers.get('Authorization', None)
            payload      = jwt.decode(token, SECRET_KEY, algorithms=ALGORITHM)
            user         = User.objects.get(id = payload['user_id'])
            request.user = user

        except jwt.exceptions.DecodeError:
            return JsonResponse({'ERROR':'INVALID_TOKEN'}, status=401)

        except User.DoesNotExist:
            return JsonResponse({'ERROR' : 'INVALID_USER'}, status=400)
            
        return func(self, request, *args, **kwargs)
    return wrapper

def SigninCheckDecorator(func):
    def wrapper(self, request, *args, **kwargs):
        try:
            token        = request.headers.get('Authorization', None)

            if not token:
                request.user = 0
                return func(self, request, *args, **kwargs)
                
            payload      = jwt.decode(token, SECRET_KEY, algorithms=ALGORITHM)
            user         = User.objects.get(id = payload['user_id'])
            request.user = user
            
            return func(self, request, *args, **kwargs)

        except jwt.exceptions.DecodeError:
            request.user = 0
            return func(self, request, *args, **kwargs)

        except User.DoesNotExist:
            request.user = 0
            return func(self, request, *args, **kwargs)
    return wrapper

