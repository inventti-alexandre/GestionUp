using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using Alejandria.Production.Win;
using Avicola.Production.Win;
using Framework.Common.Win.CustomProviders;
using Framework.Ioc;
using Ninject;

namespace Alejandria.Win
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        private static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

#if (!DEBUG)
            Application.SetUnhandledExceptionMode(UnhandledExceptionMode.CatchException);
            Application.ThreadException += ApplicationOnThreadException;
            AppDomain.CurrentDomain.UnhandledException += CurrentDomainOnUnhandledException;
#endif

            AutoMapperConfig.Execute();
            MetadataTypesRegister.InstallForThisAssembly();
            AppDomain.CurrentDomain.UnhandledException += CurrentDomainOnUnhandledException;

            using (var kernel = new StandardKernel())
            {
                //Configurar bindings
                IoCConfig.Configure(kernel);

                //Set global container.
                Ioc.Container = new NinjectIocContainer(kernel);

                //Config log4net
                //log4net.Config.DOMConfigurator.Configure();

                //MessageBoxDisplayService = Ioc.Container.Get<IMessageBoxDisplayService>();

                //Create a custom principal with an anonymous identity at startup
                //var laPazPrincipal = new LaPazPrincipal();
                //AppDomain.CurrentDomain.SetThreadPrincipal(laPazPrincipal);

                //#if(MOCK_SECURITY)
                //                MockUser();
                //#else
                //                using (var login = kernel.Get<FrmCreateMeasureWizard>())
                //                {
                //                    var result = login.ShowDialog();

                //                    if (result == DialogResult.Cancel)
                //                    {
                //                        Application.Exit();
                //                        return;
                //                    } 
                //                }
                //#endif
                //var mainForm = kernel.Get<FrmPrincipal>();

                //Application.Run(mainForm);
            }
        }

        private static void CurrentDomainOnUnhandledException(object sender, UnhandledExceptionEventArgs unhandledExceptionEventArgs)
        {
            //MessageBoxDisplayService.ShowError(mensaje);
            Application.Exit();
        }


        private static void ApplicationOnThreadException(object sender, ThreadExceptionEventArgs threadExceptionEventArgs)
        {
            //MessageBoxDisplayService.ShowError(mensaje);
            Application.Exit();
        }
    }
}
