using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Alejandria.Data
{
    public partial class AlejandriaDbContext
    {
        public AlejandriaDbContext(string nameOrConnectionString)
            : base(nameOrConnectionString)
        {
        }
    }
}
