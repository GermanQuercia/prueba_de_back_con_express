import { pool } from "./conexion.js";

export async function consultar(texto) {
    const conexion = await pool.getConnection();
    try {
        const [resultado] = await conexion.query(texto);
        return resultado;
    } catch (error) {
        throw error;
    } finally {
        if (conexion) {
            conexion.release();
        }
    }
}
