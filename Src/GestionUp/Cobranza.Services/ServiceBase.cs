using System;
using Cobranza.Data.Interfaces;
using Cobranza.Services.Interfaces;
using Framework.Data.Repository;

namespace Cobranza.Services
{
    public class ServiceBase : IServive
    {
        protected ICobranzaUow Uow { get; set; }

        protected IUowFactory UowFactory { get; set; }

        #region IDisposable

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (Uow != null)
                {
                    Uow.Dispose();
                    Uow = null;
                }
            }
        }

        #endregion
    }
}
