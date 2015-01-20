
namespace DatabaseEntities
{
    public class Acting : BaseEntity
    {
        public virtual Actor Actor { get; set; }

        public virtual Play Play { get; set; }

        public virtual bool IsMain { get; set; }

        public virtual bool IsActive { get; set; }
    }
}
