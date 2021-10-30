from flask import render_template
import connexion
from flask_cors import CORS

app = connexion.App(__name__, specification_dir='./')

app.add_api('openapi.yml')
CORS(app.app,resources=r'/api/*',methods=['GET', 'POST', 'OPTIONS', 'PUT', 'DELETE'])

@app.route('/')
def home():
    return render_template('public.html')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)

