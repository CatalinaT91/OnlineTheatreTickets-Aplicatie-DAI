using DatabaseEntities.Utils;
using System.Collections.Generic;

namespace DatabaseEntities.DAO
{
    public class ActorDAO : BaseDAO<Actor>
    {
        public static IList<Actor> FromPlay(Play play) 
        {
            Actor actor = null;
            Acting acting = null;

            return SessionHandler.GetCurrentSession()
                                 .QueryOver<Actor>(() => actor)
                                 .JoinAlias(() => actor.Actings, () => acting)
                                 .Where(() => acting.Play.Id == play.Id)
                                 .List<Actor>();
        }

    }
}
