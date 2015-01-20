
namespace DatabaseEntities
{
    public class Review : BaseEntity
    {
        public virtual Play Play { get; set; }

        public virtual Customer Customer { get; set; }

        public virtual int ReviewMark { get; set; }

        public virtual string ReviewText { get; set; }
    }
}
