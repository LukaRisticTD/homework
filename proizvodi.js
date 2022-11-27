import { createRequire } from 'module';
const require =  createRequire(import.meta.url);
import { sequelize, DataTypes, Op } from './utils.js'

const Proizvodi = sequelize.define('Proizvodi', {
    proizvodjac_id: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    naziv: {
        type: DataTypes.STRING(128),
        allowNull: false
    },
    cena: {
        type: DataTypes.DECIMAL(9.2),
        allowNull: false
    },
    opis: {
        type: DataTypes.STRING(1024),
        allowNull: true
    }
},
{
    tablename: 'proizvodi'
}
)

export const getProducts = async( proizvodId, proizvodjacId) => {
    try {
        const products = await Proizvodi.findAll({
            where: {
                id: proizvodId,
                proizvodjac_id: proizvodjacId
            }
        })
        return products
    } 
    catch (error) {
        console.log('error', error)
        return false
    }
}