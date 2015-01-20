using System;
using System.Collections.Generic;

namespace DatabaseEntities
{
    public class Event : BaseEntity
    {
        public virtual Play Play { get; set; }

        public virtual Theatre Theatre { get; set; }

        public virtual DateTime DateTime { get; set; }

        public virtual Decimal SeatPrice { get; set; }

        /// <summary>
        /// INVERSE
        /// A list with all the tickets sold for the current event.
        /// </summary>
        public virtual ISet<Ticket> Tickets { get; set; }
    }
}
