using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebApplication3.models;
namespace WebApplication3.api {
    public class Api {
        static SqlConnection connection = null;

        public static void connect() {
            string connectionStr = @"Data Source=PC\SQLEXPRESS;Database=Forum;Integrated Security=True;";
            connection = new SqlConnection(connectionStr);
            connection.Open();
        }

        public static void disconnect() {
            if (connection != null) {
                connection.Close();
            }
        }

        public static int SignUp(string username, string password) {
            var user = GetUser(username);
            if (user != null) return -1;
            CreateUser(username, password);
            return 0;
        }

        public static models.User CreateUser(string username, string password) {
            string query = String.Format("INSERT INTO Users (userName, userPassword)" +
                " VALUES ('{0}', '{1}');", username, password);
            ExecuteQuery(query);
            return GetUser(username);
        }

        public static models.User VerifyUser(string username, string password) {
            string query = String.Format("select * from Users where userName='{0}' and userPassword='{1}'", username, password);
            var cmd = new SqlCommand(@query, connection);
            var rd = cmd.ExecuteReader();
            models.User user = null;
            if(rd.Read()) {
                user =  new models.User( rd["userName"].ToString(), int.Parse(rd["userId"].ToString()));
            }
            rd.Close();
            return user;
        }

        public static models.User GetUser(string username) {
            string query = String.Format("select * from Users where userName='{0}'", username);
            var cmd = new SqlCommand(@query, connection);
            var rd = cmd.ExecuteReader();
            models.User user = null;
            if(rd.Read()) {
                user =  new models.User( rd["userName"].ToString(), int.Parse(rd["userId"].ToString()));
            }
            rd.Close();
            return user;
        }

        public static void IncrementQuesLikes(int quesId) {
            string query = String.Format("UPDATE Questions SET likes=likes+1 WHERE quesID={0};", quesId);
            var cmd = new SqlCommand(@query, connection); 
            cmd.ExecuteNonQuery();
        }

        public static void IncrementAnsLikes(int ansId, int newLikes)
        {
            string query = String.Format("UPDATE Answers SET likes={0} WHERE quesID={1};", newLikes, ansId);
            var cmd = new SqlCommand(@query, connection);
            cmd.ExecuteNonQuery();
        }

        public static void IncrementQuesDislikes(int quesId)
        {
            string query = String.Format("UPDATE Questions SET dislikes=dislikes+1 WHERE quesID={0};", quesId);
            var cmd = new SqlCommand(@query, connection);
            cmd.ExecuteNonQuery();
        }

        public static void IncrementAnsDislikes(int ansId, int newdislikes) {
            string query = String.Format("UPDATE Questions SET dislikes={0} WHERE quesID={1};", newdislikes, ansId);
            var cmd = new SqlCommand(@query, connection);
            cmd.ExecuteNonQuery();
        }


        private static void ExecuteQuery(string query) {
            var cmd = new SqlCommand(@query, connection);
            cmd.ExecuteNonQuery();
        }

        public static void AddQuestion(int userId, string question) {
            question = question.Trim();
            string query = String.Format("INSERT INTO Questions(userId, quescontent, likes, dislikes) VALUES ({0}, '{1}', {2}, {3});", userId, question, 0, 0);
            ExecuteQuery(query);
        }   

        public static List<Question> GetQuestions() {
            List<models.Question> questions = new List<models.Question>();
            string query = "select * from Questions";
            var cmd = new SqlCommand(@query, connection); 
            var rd = cmd.ExecuteReader();
            while (rd.Read()) {
                questions.Add(GetQuestion(rd));
            }
            rd.Close();
            return questions;
        }

        private static models.Question GetQuestion(SqlDataReader rd) {
            models.Question question = new Question();
            question.Id = int.Parse(rd["quesId"].ToString());
            question.Likes = int.Parse(rd["likes"].ToString());
            question.Dislikes = int.Parse(rd["dislikes"].ToString());
            question.UserId = int.Parse(rd["userId"].ToString());
            question.Content = rd["quesContent"].ToString();
            return question;
        }
    }
}