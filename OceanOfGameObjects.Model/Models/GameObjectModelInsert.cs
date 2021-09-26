using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OceanOfGameObjects.Model
{
    public class GameObjectModelInsert
    {
        [Required]
        public string Name { get; set; }

        [Required]
        public string Category { get; set; }

        [Required]
        public string Type { get; set; }

        [Required]
        public double Size { get; set; }

        [Required]
        public string URL { get; set; }

        [Required]
        [CustomDatetimeValidation(ErrorMessage = "The value of Datetime must be greater than " + Constant.MinDateTime)]
        public DateTime UploadedDate { get; set; }
    }
}
