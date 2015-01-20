
using System.Collections.Generic;
namespace DatabaseEntities
{
    public class Customer : BaseEntity
    {
        public virtual string FirstName { get; set; }

        public virtual string LastName { get; set; }

        public virtual string Username { get; set; }

        public virtual string Password { get; set; }

        public virtual string Address { get; set; }

        public virtual string PhoneNo { get; set; }

        /// <summary>
        /// INVERSE
        /// A list with all the reviews given by the current user.
        /// </summary>
        public virtual ISet<Review> Reviews { get; set; }

        /// <summary>
        /// INVERSE
        /// A list with all the tickets bought by the current user.
        /// </summary>
        public virtual ISet<Ticket> Tickets { get; set; }
    }
}
