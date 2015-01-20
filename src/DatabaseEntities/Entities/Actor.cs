using System;
using System.Collections.Generic;

namespace DatabaseEntities
{
    public class Actor : BaseEntity
    {
        public virtual string FirstName { get; set; }

        public virtual string LastName { get; set; }

        public virtual DateTime Birthday { get; set; }

        public virtual string About { get; set; }

        public virtual Category Category { get; set; }

        public virtual Image Image { get; set; }

        /// <summary>
        /// INVERSE
        /// A list with all the actings of the current actor.
        /// </summary>
        public virtual ISet<Acting> Actings { get; set; }

        /// <summary>
        /// INVERSE
        /// A list with all the plays written by the current person.
        /// </summary>
        public virtual ISet<Play> AuthorPlays { get; set; }

        /// <summary>
        /// INVERSE
        /// A list with all the plays directed by the current person.
        /// </summary>
        public virtual ISet<Play> DirectorPlays { get; set; }
    }
}
