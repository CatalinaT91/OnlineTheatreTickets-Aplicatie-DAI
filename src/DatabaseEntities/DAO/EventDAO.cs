
using DatabaseEntities.Utils;
using System;
using System.Collections.Generic;
namespace DatabaseEntities.DAO
{
    public class EventDAO: BaseDAO<Event>
    {
        public static IList<Event> GetAllStartingFromToday() 
        {
            return SessionHandler.GetCurrentSession()
                                 .QueryOver<Event>()
                                 .Where(c => c.DateTime >= DateTime.Now)
                                 .List<Event>();
        }

        public static IList<Event> FromDate(DateTime date)
        {
            return SessionHandler.GetCurrentSession()
                                 .QueryOver<Event>()
                                 .Where(c => c.DateTime.Date == date.Date)
                                 .List<Event>();
        }
        public static IList<Event> FromPlayAndDate(string playName, DateTime date)
        {
            Play play = null;
            Event show = null;

            return SessionHandler.GetCurrentSession()
                                 .QueryOver<Event>(() => show)
                                 .JoinAlias(() => show.Play, () => play)
                                 .Where(() => play.IsActive == true)
                                 .And(() => play.Name == playName)
                                 .And(() => show.DateTime.CompareTo(date) == 0)
                                 .List<Event>();
        }
    }
}
