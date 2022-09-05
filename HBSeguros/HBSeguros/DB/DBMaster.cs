using System.Data.SqlClient;

namespace HBSeguros.DB
{
    public class DBMaster
    {
        #region Singleton
        private DBMaster() { }
        private static DBMaster instance = null;
        public static DBMaster Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DBMaster();
                }
                return instance;
            }
        }

        #endregion Singleton

        public void connection()
        {
            //try
            //{
            //    string connetionString = null;
            //    SqlConnection cnn;
            //    connetionString = "Data Source=MSI\\SQLEXPRESS;Initial Catalog=master;User ID=peprg;";
            //    cnn = new SqlConnection(connetionString);
            //    cnn.Open();
            //    cnn.Close();
            //}
            //catch(Exception ex)
            //{
            //    Console.WriteLine(ex.Message);
            //}

            try
            {
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = "MSI\\SQLEXPRESS";
                builder.UserID = "clemente";
                builder.Password = "12345";
                builder.InitialCatalog = "master";

                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                    String sql = "SELECT * FROM tblIniciioSesion";

                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        connection.Open();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Console.WriteLine("{0} {1}", reader.GetString(0), reader.GetString(1));
                            }
                        }
                    }
                }
            }
            catch (SqlException e)
            {
                Console.WriteLine(e.ToString());
            }
        }
    }
}