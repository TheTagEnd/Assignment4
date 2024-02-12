using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;

namespace WebApplication3.models {
    public class Question {
        public int UserId { get; set; }
        public int Id { get; set; }
        public string Content { get; set; }
        public int Likes { get; set; }
        public int Dislikes { get; set; }

        

        public String BuildHTML() {
            string html = @"
            <div class='row align-items-center'>
                <div class='col-8' onclick='gotoanswer()'>
                    <h5 class='mb-1'>{0}</h5>
                    <small class='text-muted'>{1}</small>
                </div>
                <div class='col-2 d-flex justify-content-end align-items-center'>
                    <asp:Button ID='LikeBtn{4}' runat='server' class='btn btn-sm btn-light me-2' OnClick='LikeQuestion'>
                        <img src='https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/icons/heart.svg' alt='Like' width='20' height='20'>
                        <span id='likeCount'>{2}</span>
                    </asp:Button>
                    <asp:Button ID='DislikeBtn{4}' class='btn btn-sm btn-light'runat= 'server' OnClick='DislikeQuestion'>
                        <img src='https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/icons/hand-thumbs-down.svg' alt='Dislike' width='20' height='20'>
                        <span id='dislikeCount'>{3}</span>
                    </asp:Button>
                </div>
            </div>";

            // Format the string with provided data
            return string.Format(html, Content, UserId, Likes, Dislikes, Id);
        }

        override
            public string ToString() {
                return BuildHTML();
        }
    }
}