activate_this = "/Users/payne/git/flask-ppm-tool/bin/activate_this.py"
execfile(activate_this, dict(__file__=activate_this))

import sys
sys.path.insert(0, '/Users/payne/git/flask-ppm-tool/server')

from app import app as application
application.secret_key = 'aeQ8}tnv]EQzuY9*7jKp39XPMxaaEeFPsrUgpqGnoUo]Fu]yyz'
