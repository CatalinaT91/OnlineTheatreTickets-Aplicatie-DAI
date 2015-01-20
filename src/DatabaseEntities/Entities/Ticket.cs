
namespace DatabaseEntities
{
    public class Ticket : BaseEntity
    {
        public virtual Customer Customer { get; set; }

        public virtual Event Event { get; set; }

        public virtual int TicketsNo { get; set; }

    }
}
