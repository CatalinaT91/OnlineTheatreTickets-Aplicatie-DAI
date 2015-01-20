using DatabaseEntities.Utils;
using System.Collections.Generic;

namespace DatabaseEntities.DAO
{
    public class TheatreDAO : BaseDAO<Theatre>
    {
        public static IList<Theatre> GetAll()
        {
            return SessionHandler.GetCurrentSession()
                                 .QueryOver<Theatre>()
                                 .List<Theatre>();
        }
    }
}
