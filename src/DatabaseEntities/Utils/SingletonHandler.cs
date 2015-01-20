using System;
using System.Collections.Generic;
using System.Runtime.Remoting.Messaging;

namespace DatabaseEntities.Utils
{
    /// <summary>
    /// This represents the singleton dictionary stored in this thread.
    /// </summary>
    class SingletonDictionary : Dictionary<string, object>, IDisposable
    {
        private bool isDisposed = false;

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        public virtual void Dispose(bool disposing)
        {
            if (isDisposed)
                return;

            if (disposing)
            {
                foreach (KeyValuePair<string, object> entry in this)
                {
                    if (!(entry.Value is IDisposable))
                        continue;

                    IDisposable disposable = (IDisposable)entry.Value;
                    disposable.Dispose();
                }
            }
            isDisposed = true;
        }

        ~SingletonDictionary()
        {
            Dispose(false);
        }
    }

    public class SingletonHandler
    {
        #region Constants
        public const string CurrentInstanceKey = "LogViwer";
        #endregion

        #region Singleton get/set methods
        /// <summary>
        /// Retrieve the current thread dictionary container. Also creates it if it's not already available.
        /// </summary>
        /// <returns>The current container.</returns>
        private static SingletonDictionary GetContainer()
        {
            SingletonDictionary container = null;

            container = (SingletonDictionary)CallContext.GetData(CurrentInstanceKey);
            if (container != null)
                return container;

            container = new SingletonDictionary();
            CallContext.SetData(CurrentInstanceKey, container);
            return container;

        }

        /// <summary>
        /// Retrieve the default current instance of a specific type.
        /// </summary>
        /// <typeparam name="TType">The type to look for.</typeparam>
        /// <returns>The actual instance.</returns>
        public static TType GetInstance<TType>()
        {
            return GetInstance<TType>(typeof(TType).Name);
        }

        /// <summary>
        /// Retrieve the named current instance of the specified type.
        /// </summary>
        /// <typeparam name="TType">The type to return.</typeparam>
        /// <param name="myKey">The key to look under.</param>
        /// <returns>The actual instance.</returns>
        public static TType GetInstance<TType>(String myKey)
        {
            object result;
            if (!GetContainer().TryGetValue(myKey, out result))
                return default(TType);

            return (TType)result;
        }

        /// <summary>
        /// Set the default current instance.
        /// </summary>
        /// <param name="myObject">The actual instance.</param>
        public static void SetInstance(object myObject)
        {
            SetInstance(myObject.GetType().Name, myObject);
        }

        /// <summary>
        /// Set the named current instance.
        /// </summary>
        /// <param name="myKey">The name under which to file this instance.</param>
        /// <param name="myObject">The actual instance.</param>
        public static void SetInstance(String myKey, object myObject)
        {
            GetContainer()[myKey] = myObject;
        }
        #endregion
    }
}
