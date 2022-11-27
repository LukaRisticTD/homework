import { response } from 'express';
import { createRequire } from 'module';
const require =  createRequire(import.meta.url);

const express = require('express')
const app = express()

import { getProducts } from './proizvodi.js';
import { getProizvodjace } from './proizvodjac.js';

app.get('/', async function(req, res) {
    const products = await getProducts(1)
    const proizvodjaci = await getProizvodjace(1, 1)
    const data = [ products, prozvodjaci ]
    response.status(200).send(JSON.stringify(data))
})