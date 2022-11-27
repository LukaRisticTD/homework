import { createRequire } from 'module';
const require =  createRequire(import.meta.url);
import { sequelize, DataTypes, Op } from './utils.js'

const Proizvodjac = sequelize.define('Proizvodjac', {
    naziv: {
        type: DataTypes.STRING(128),
        allowNull: false
    }
},
{
    tablename: 'proizvodjac'
}
)

export const getProizvodjace = async (proizvodjacId) => {
  try {
    const proizvidjac = await Proizvodjac.findAll({
        where: { 
            id: proizvodjacId
        }
    })
    return proizvidjac 
  } catch(error) {
        console.log(error)
        return false
  }
}