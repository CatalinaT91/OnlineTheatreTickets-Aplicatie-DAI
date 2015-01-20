using DatabaseEntities.Utils;
using System;
using System.Collections.Generic;

namespace DatabaseEntities.DAO
{
    public class PlayDAO : BaseDAO<Play>
    {
        public static IList<Play> GetAll() 
        {
            return SessionHandler.GetCurrentSession()
                                 .QueryOver<Play>()
                                 .List<Play>();
        }

        public static IList<Play> GetAllFromToday() 
        {
            Play play = null;
            Event show = null;

            return SessionHandler.GetCurrentSession()
                                 .QueryOver<Play>(() => play)
                                 .JoinAlias(() => play.Events, () => show)
                                 .Where(() => play.IsActive == true)
                                 .And(() => show.DateTime.Date == DateTime.Now.Date)
                                 .List<Play>();
        }

        public static IList<Play> GetAllStartingFromToday()
        {
            Play play = null;
            Event show = null;

            return SessionHandler.GetCurrentSession()
                                 .QueryOver<Play>(() => play)
                                 .JoinAlias(() => play.Events, () => show)
                                 .Where(() => play.IsActive == true)
                                 .And(() => show.DateTime >= DateTime.Now)
                                 .OrderBy(() => show.DateTime).Asc
                                 .List<Play>();
        }
    }
}
