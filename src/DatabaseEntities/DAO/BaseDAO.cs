using DatabaseEntities.Utils;
using NHibernate;
using NHibernate.Criterion;
using System.Collections.Generic;
using System.Linq;

namespace DatabaseEntities
{
    public class BaseDAO<TEntity> where TEntity : BaseEntity
    { 
        
        #region SQL Operations
        /// <summary>
        /// Gets the entity with the given ID.
        /// Search is performed in cache memory and DB.
        /// </summary>
        /// <param name="Id">The ID of the object to be loaded.</param>
        public static TEntity Get(int Id)
        {
           return SessionHandler.GetCurrentSession()
                                .Get<TEntity>(Id);
        }

        /// <summary>
        /// Gets the entity with the given ID.
        /// Search is performed only in cache memory.
        /// </summary>
        /// <param name="Id">The ID of the object to be loaded.</param>
        public static TEntity Load(int Id)
        {
            return SessionHandler.GetCurrentSession()
                                 .Load<TEntity>(Id);
        }

        /// <summary>
        /// Inserts or updates into the database the given entity.
        /// </summary>
        /// <param name="entity">The entity to be inserted or updated.</param>
        public static void Save(TEntity entity)
        {
            if (entity.Id != null)
                 SessionHandler.GetCurrentSession().Merge(entity);
           else 
                SessionHandler.GetCurrentSession().SaveOrUpdate(entity);
        }

        /// <summary>
        /// Deletes from the database the given entity.
        /// </summary>
        /// <param name="entity">The entity to be deleted</param>
        public static void Delete(TEntity entity)
        {
            SessionHandler.GetCurrentSession()
                          .Delete(entity);
        }

        /// <summary>
        /// Gets the number of rows from the database table.
        /// </summary>
        /// <returns>The number of entries.</returns>
        public static int Count() 
        { 
            return SessionHandler.GetCurrentSession()
                                 .QueryOver<TEntity>()
                                 .Select(Projections.RowCount())
                                 .SingleOrDefault<int>();
        }

        /// <summary>
        /// Reloads from the database the given entity.
        /// </summary>
        /// <param name="entity">The entity to be reloaded.</param>
        public static void Refresh(TEntity entity)
        {
           SessionHandler.GetCurrentSession()
                         .Refresh(entity);
        }

        /// <summary>
        /// Returns an entry from the database that match each property of the given entity.
        /// </summary>
        /// <param name="entity">The example entity. The result must be compared to it.</param>
        /// <returns>An entry that match the properties of the given entity.</returns>
        public static TEntity FromExample(TEntity entity)
        {
            return SessionHandler.GetCurrentSession()
                                 .CreateCriteria(typeof(TEntity))
                                 .Add(Example.Create(entity))
                                 .List<TEntity>()
                                 .FirstOrDefault<TEntity>();                                
        }

        /// <summary>
        /// Returns a list of entries from the database that match each property of the given entity.
        /// </summary>
        /// <param name="entity">The example entity. The results must be compared to it.</param>
        /// <returns>A list of entries that match the search.</returns>
        public static IList<TEntity> FromExampleAll(TEntity entity)
        {
            return SessionHandler.GetCurrentSession()
                                 .CreateCriteria(typeof(TEntity))
                                 .Add(Example.Create(entity))
                                 .List<TEntity>();
        }

        /// <summary>
        /// Adds to the given query an offset and the maximum number of results.
        /// </summary>
        /// <param name="offset">The number of results that must be ignored.</param>
        /// <param name="size">The number of required results.</param>
        /// <param name="criteria">The given criteria.</param>
        /// <returns>The new resulted criteria.</returns>
        protected static ICriteria SetResultSetSize(int offset, int size, ICriteria criteria)
        {
            return criteria.SetFirstResult(offset).SetMaxResults(size);
        }

        /// <summary>
        /// Adds to the given query an "order by" clause.
        /// </summary>
        /// <param name="orderByColumn">The name of the column that must be used for ordering.</param>
        /// <param name="ascending">The ordering direction: true for ascending, false otherwise.</param>
        /// <param name="criteria">The given criteria.</param>
        /// <returns>The new resulted criteria.</returns>
        protected static ICriteria SetOrderByClause(string orderByColumn, bool ascending, ICriteria criteria)
        {
            if (orderByColumn == null)
                return criteria;

            return criteria.AddOrder(new Order(orderByColumn, ascending));
        }

        #endregion
   
    }
}
