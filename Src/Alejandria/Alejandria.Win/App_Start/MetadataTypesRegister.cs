using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Reflection;

namespace Alejandria.Win
{
    public static class MetadataTypesRegister
    {
        static object InstalledLock = new object();
        static bool _installed = false;

        public static void InstallForThisAssembly()
        {
            if (_installed)
            {
                return;
            }

            lock (InstalledLock)
            {
                if (_installed)
                {
                    return;
                }

                var types = Assembly
                           .GetExecutingAssembly()
                           .GetReferencedAssemblies()
                           .Where(x => x.Name.Contains("Alejandria"))
                           .Select(x => Assembly.Load(x))
                           .SelectMany(x => x.GetTypes());

                foreach (Type type in types)
                {
                    foreach (MetadataTypeAttribute attrib in type.GetCustomAttributes(typeof(MetadataTypeAttribute), true))
                    {
                        TypeDescriptor.AddProviderTransparent(
                            new AssociatedMetadataTypeTypeDescriptionProvider(type, attrib.MetadataClassType), type);
                    }
                }

                _installed = true;
            }
        }
    }
}
