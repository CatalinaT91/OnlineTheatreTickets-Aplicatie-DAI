
using System.Collections.Generic;
namespace DatabaseEntities
{
    public class Theatre : BaseEntity
    {
        public virtual string TheatreName { get; set; }

        public virtual int SeatsNo { get; set; }

        public virtual Image Image { get; set; }

        public virtual string About { get; set; }
        /// <summary>
        /// INVERSE
        /// A list with all the events hold in the current theatre.
        /// </summary>
        public virtual ISet<Event> Events { get; set; }
    }
}
