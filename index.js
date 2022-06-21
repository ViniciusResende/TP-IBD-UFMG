const Knex = require('knex')
const fs = require('fs');

const connection = {
  filename: './data/mydb.sqlite3'
}

async function main() {
  let knex = Knex({
    client: 'sqlite3',
    connection,
    useNullAsDefault: true,
  })

  await knex.migrate.latest()
  
  const sql = fs.readFileSync('./data/database.sql').toString();
  const queries = sql.split(';')

  for(query of queries) {
    await knex.raw(query);
  }
}

main().catch(console.log).then(process.exit)