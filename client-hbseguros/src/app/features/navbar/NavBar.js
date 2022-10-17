import React from "react";
import Principal from '../navbar/Principal.module.scss';
import General from '../../layout/scss/Style.module.scss';


export default function NavBar() {
    return (

        <div className={General.contenedorPrincipal}>
            <img src={require('../../layout/Imagenes/HB_Seguros.jpg')}></img>
            <div className={Principal.formEncabezado}>
                <div className={Principal.all}>
                    <div className={Principal.lefter2}>
                        <div className={Principal.textMenu}>Catálogos</div>
                    </div>
                    <div className={Principal.lefter1}>
                        <div className={Principal.textMenu}>Dashboard</div>
                    </div>
                    <div className={Principal.lefter}>
                        <div className={Principal.textMenu}>Cartera</div>
                    </div>
                    <div className={Principal.left}>
                        <div className={Principal.textMenu}>Seguimiento</div>
                    </div>
                    <div className={Principal.center}>
                        <div className={Principal.explainer}><span id="bienvenido"></span></div>
                        <div className={Principal.textMenu}>Cotizador</div>
                    </div>
                    <div className={Principal.right}>
                        <div className={Principal.textMenu}>Pólizas</div>
                    </div>
                    <div className={Principal.righter}>
                        <div className={Principal.textMenu}>Cobranza</div>
                    </div>
                    <div className={Principal.righter1}>
                        <div className={Principal.textMenu} >Notificaciones</div>
                    </div>
                    <div className={Principal.righter2}>
                        <div className={Principal.textMenu}>Salir</div>
                    </div>
                </div>
            </div>
        </div>
    )
}