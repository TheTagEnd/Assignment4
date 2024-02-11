using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3.models {
    public class User {
        public int Id { get; set; }
        public string Name { get; set; }

        public User(string name, int id) {
            this.Name = name;
            this.Id = id;
        }
    }
}