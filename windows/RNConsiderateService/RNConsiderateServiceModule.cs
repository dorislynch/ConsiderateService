using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Considerate.Service.RNConsiderateService
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNConsiderateServiceModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNConsiderateServiceModule"/>.
        /// </summary>
        internal RNConsiderateServiceModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNConsiderateService";
            }
        }
    }
}
