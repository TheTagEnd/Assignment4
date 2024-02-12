using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;

namespace WebApplication3.models
{
    public class Answer
    {
        public int UserId { get; set; }
        public int Id { get; set; }
        public string Content { get; set; }
        public int Likes { get; set; }
        public int Dislikes { get; set; }
        public int quesId {  get; set; }


    }
}