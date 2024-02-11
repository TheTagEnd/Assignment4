using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3.models {
    public class Question {
        public int Id { get; set; }
        public int QuesId { get; set; }
        public string Content { get; set; }
        public int Likes { get; set; }
        public int Dislikes { get; set; }

    }
}