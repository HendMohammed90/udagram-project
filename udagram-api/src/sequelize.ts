import { Sequelize } from "sequelize-typescript";
import { config } from "./config/config";

export const sequelize = new Sequelize({
  username: config.username,
  password: config.password,
  database: config.database,
  host: config.host,
  port: config.dbPort,
  // username:process.env.POSTGRES_USERNAME ,
  // password : process.env.POSTGRES_PASSWORD,
  // database:process.env.POSTGRES_DB,
  // host:process.env.POSTGRES_HOST,
  // port: Number(process.env.PORT),
  logging: false,
  dialect: "postgres",
  storage: ":memory:",
});

