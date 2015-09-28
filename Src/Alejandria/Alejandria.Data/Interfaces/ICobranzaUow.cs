using Cobranza.Entities;
using Framework.Data.Repository;

namespace Cobranza.Data.Interfaces
{
    public interface ICobranzaUow : IUow
    {
        IRepository<CategoriaOperador> CategoriaOperadores { get; }
        IRepository<CondicionesIVA> CondicionesIVAs { get; }
        IRepository<CondicionesVenta> CondicionesVentas { get; }
        IRepository<Especialidad> Especialidades { get; }
        IRepository<EstadosCliente> EstadosClientes { get; }
        IRepository<Localidad> Localidades { get; }
        IRepository<Operador> Operadores { get; }
        IRepository<Personal> Personales { get; }
        IRepository<Profesion> Profesiones { get; }
        IRepository<Provincia> Provincias { get; }
        IRepository<Sucursal> Sucursales { get; }
        IRepository<TiposDocumentosIdentidad> TiposDocumentosIdentidades { get; }

        CobranzaDbContext DbContext { get; }
    }
}
