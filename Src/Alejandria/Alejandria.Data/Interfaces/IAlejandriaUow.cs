using Alejandria.Entities;
using Framework.Data.Repository;

namespace Alejandria.Data.Interfaces
{
    public interface IAlejandriaUow : IUow
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

        AlejandriaDbContext DbContext { get; }
    }
}
