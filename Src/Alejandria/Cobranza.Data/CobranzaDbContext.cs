using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cobranza.Data
{
    public partial class CobranzaDbContext
    {
        public CobranzaDbContext(string nameOrConnectionString)
            : base(nameOrConnectionString)
        {
        }
    }
}
