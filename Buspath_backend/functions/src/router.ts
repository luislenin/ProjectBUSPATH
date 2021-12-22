import { Application } from "express";
import { listaParadas } from "./controllers/paradas_controllers";


export function routesParadas(app: Application){
    app.get('/api/paradas', listaParadas);
}