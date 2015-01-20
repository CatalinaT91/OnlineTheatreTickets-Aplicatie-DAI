using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DatabaseEntities
{
    public class Play : BaseEntity
    {
        public virtual string Name { get; set; }

        public virtual Decimal Duration { get; set; }

        public virtual bool IsActive { get; set; }

        public virtual Actor Author { get; set; }

        public virtual Actor Director { get; set; }

        public virtual Image Image { get; set; }

        public virtual string About { get; set; }
        /// <summary>
        /// INVERSE
        /// A list with all the actings of the current play.
        /// </summary>
        public virtual ISet<Acting> Actings { get; set; }

        /// <summary>
        /// INVERSE
        /// A list with all the events of the current play.
        /// </summary>
        public virtual ISet<Event> Events { get; set; }
    }
}
