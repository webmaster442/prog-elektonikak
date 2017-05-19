#ssl generalasa: https://www.digitalocean.com/community/tutorials/how-to-create-a-ssl-certificate-on-apache-on-arch-linux
from functools import wraps
from flask import Flask, make_response, request, Response
import ssl

context = ssl.SSLContext(ssl.PROTOCOL_TLSv1_2)
context.load_cert_chain('server.crt', 'server.key')

app = Flask(__name__)

def auth(user, passwd):
	return user == 'test' and passwd == '1234'

def authenticate():
    """Sends a 401 response that enables basic auth"""
    return Response(
    'Could not verify your access level for that URL.\n'
    'You have to login with proper credentials', 401,
    {'WWW-Authenticate': 'Basic realm="Login Required"'})


def requires_auth(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        a = request.authorization
        if not a or not auth(a.username, a.password):
            return authenticate()
        return f(*args, **kwargs)
    return decorated

@app.errorhandler(404)
def not_found(error):
	return make_response('not found', 404)

@app.route('/test')
def index():
	return "Custom restapi 0.1"
	
@app.route('/test/helloworld')
@requires_auth
def helloworld():
	return "Hello, RESTfull World!"
	
if __name__ == "__main__":
    app.run(port=8080, ssl_context=context)
