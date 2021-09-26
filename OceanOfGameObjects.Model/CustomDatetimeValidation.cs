using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OceanOfGameObjects.Model
{
    public class CustomDatetimeValidation : ValidationAttribute
    {
        public DateTime MinDatetime { get; set; }
        public int Maximum { get; set; }

        public CustomDatetimeValidation()
        {
            this.MinDatetime = new DateTime(1773, 1, 1); 
        }

        public override bool IsValid(object value)
        {
            DateTime dt = (DateTime)value;
            return dt > MinDatetime;
        }
    }
}
