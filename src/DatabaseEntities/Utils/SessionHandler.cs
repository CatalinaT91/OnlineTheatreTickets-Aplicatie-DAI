using NHibernate;
using NHibernate.Cfg;

namespace DatabaseEntities.Utils
{
    public class SessionHandler
    {
        #region Constants
        public const string ISESSION_SINGLETON_KEY = "ISession";
        #endregion

        #region Fields
        public static ISessionFactory SessionFactory;
        public static Configuration configuration = new Configuration().Configure();
        #endregion

        #region Session methods
        /// <summary>
        /// Configures the SessionFactory if it is not already instantiated.
        /// Saves the configuration.
        /// The instantiation of a SessionFactory must be done ONCE for the entire application.
        /// </summary>
        public static void BuildSessionFactory()
        {
            if (SessionFactory != null)
                return;

            SessionFactory = configuration.BuildSessionFactory();
        }

        /// <summary>
        /// Returns the current ISession object. Deliberately returns closed sessions as well;
        /// if you want to dispose of sessions manually then you really do have to do it manually
        /// (i.e. null them). This avoids mishaps in the code which might break database transitions.
        /// </summary>
        /// <returns>The existing session or a new one.</returns>
        public static ISession GetCurrentSession()
        {
            BuildSessionFactory();
            if (null == SingletonHandler.GetInstance<ISession>(ISESSION_SINGLETON_KEY))
            {
                ISession session = SessionFactory.OpenSession();
                session.FlushMode = FlushMode.Commit;
                SingletonHandler.SetInstance(ISESSION_SINGLETON_KEY, session);
            }

            return SingletonHandler.GetInstance<ISession>(ISESSION_SINGLETON_KEY);
        }

        /// <summary>
        /// Synchronizes all the changes to the database.
        /// </summary>
        public static void Flush()
        {
            GetCurrentSession().Flush();
        }

        /// <summary>
        /// Cancels all the updates that were pending in cache.
        /// </summary>
        public static void Clear()
        {
            GetCurrentSession().Clear();
        }

        /// <summary>
        /// Closes the current session, if is not already null.
        /// Sets null the instance of session in the singleton handler.
        /// </summary>
        public static void CloseSession()
        {
            ISession currentSession = SingletonHandler.GetInstance<ISession>(ISESSION_SINGLETON_KEY);
            if (currentSession == null)
            {
                return;
            }

            currentSession.Close();
            SingletonHandler.SetInstance(ISESSION_SINGLETON_KEY, null);
        }

        /// <summary>
        /// Closes the session factory.
        /// </summary>
        public static void CloseSessionFactory()
        {
            if (SessionFactory != null)
                SessionFactory.Close();
        }
        #endregion
    }
}
