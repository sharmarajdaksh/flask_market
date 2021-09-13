from flask import render_template
from market import app
from market.models import Item


@app.route('/')
@app.route('/home/')
def home_page():
    return render_template('home.html')


@app.route('/market')
def market_page():
    return render_template('market.html', items=Item.query.all())
