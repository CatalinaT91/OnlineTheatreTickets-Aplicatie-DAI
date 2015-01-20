
using DatabaseEntities.Utils;
using System.Collections.Generic;
namespace DatabaseEntities.DAO
{
    public class ReviewDAO : BaseDAO<Review>
    {
        public static IList<Review> FromPlay(int playId)
        {
            Review review = null;
            Play play = null;

            return SessionHandler.GetCurrentSession()
                                 .QueryOver<Review>(() => review)
                                 .JoinAlias(() => review.Play, () => play)
                                 .Where(() => play.Id == playId)
                                 .List<Review>();
        }
    }
}
