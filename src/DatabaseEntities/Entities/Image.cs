using System;
using System.IO;

namespace DatabaseEntities
{
    // http://www.codeproject.com/Tips/445876/Auto-bind-byte-to-asp-Image
    public class Image : BaseEntity
    {
        #region Ctor
        public Image() { }

        public Image(String path) 
        {
            ImageContent = File.ReadAllBytes(path);

        }
        #endregion

        #region Properties
        public virtual byte[] ImageContent { get; set; }
        #endregion

        #region Methods
        public string GetImage()
        {
            return "data:image/jpg;base64," + Convert.ToBase64String(ImageContent);
        }
        #endregion
    }
}
