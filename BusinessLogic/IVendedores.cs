﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    interface IVendedores
    {
        List<Vendedores> GetVendedoresMismoEstado();
        List<Vendedores> GetVendedoresImporteFacturadoSuperaMedia();
        Vendedores GetTotalRegistroVendedores();
    }
}
