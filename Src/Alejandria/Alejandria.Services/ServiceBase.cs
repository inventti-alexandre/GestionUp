using System;
using Alejandria.Data.Interfaces;
using Alejandria.Services.Interfaces;
using Framework.Data.Repository;

namespace Alejandria.Services
{
    public class ServiceBase : IServive
    {
        protected IAlejandriaUow Uow { get; set; }

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
