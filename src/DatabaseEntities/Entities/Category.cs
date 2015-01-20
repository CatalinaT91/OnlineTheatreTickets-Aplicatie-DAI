using System.Collections.Generic;

namespace DatabaseEntities
{
    public class Category : BaseEntity
    {
        /// <summary>
        /// The name of the category.
        /// eg. Actor, Director, Author.
        /// </summary>
        public virtual string CategoryName { get; set; }

        /// <summary>
        /// INVERSE
        /// A list with all the persons in this category.
        /// </summary>
        public virtual ISet<Actor> Actors { get; set; }
    }
}
