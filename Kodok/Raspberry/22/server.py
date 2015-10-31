from flask import *
import RPi.GPIO as GPIO
import os

pins = [2, 3, 4, 17, 22, 10, 9, 11, 7, 8, 25, 24, 23, 18, 14 ]
app = Flask(__name__)
GPIO.setmode(GPIO.BCM)

def allapotok():
    buffer = []
    for i in pins:
        GPIO.setup(int(i), GPIO.IN)
        buffer.append('GPIO '+ str(i) +' allapota: '+str(GPIO.input(int(i))) + '\r\n')
    return ''.join(buffer)

@app.route("/")
def index():
    return render_template('index.html')

@app.route("/bemenetek")
def bemenetek():
    sablon = { 'allapot' : allapotok() }
    return render_template('be.html', **sablon)

@app.route("/kimenetek")
def kimenetek():
    return render_template('ki.html')

@app.route("/kimenetvezerel", methods=['GET', 'POST'])
def kimenetvezerel():
    if request.method == 'POST':
        GPIO.setup(24, GPIO.OUT)
        GPIO.setup(25, GPIO.OUT)
        if request.form['p24'] == 'on':
            GPIO.output(24, 1)
        else:
            GPIO.output(24, 0)
        if request.form['p25'] == 'on':
            GPIO.output(25, 1)
        else:
            GPIO.output(25, 0)
        return "A kimenetek valtasa megtortent"
    else:
        return ""

if __name__ == "__main__":
	app.run(host='0.0.0.0', port=80, debug=True)