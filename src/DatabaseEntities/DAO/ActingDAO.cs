
using DatabaseEntities.Utils;
using System.Collections.Generic;
namespace DatabaseEntities.DAO
{
    public class ActingDAO : BaseDAO<Acting>
    {
        public static IList<Acting> FromPlay(Play play) 
        {
            return SessionHandler.GetCurrentSession()
                                 .QueryOver<Acting>()
                                 .Where(c => c.Play.Id == play.Id)
                                 .List<Acting>();
        }
    }
}
