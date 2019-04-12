using Godot;
using System.Data.SQLite;

public class world : Node2D
{
    public override void _Ready()
    {
        string dataSource = "SQLiteDemo.db";
        SQLiteConnection connection = new SQLiteConnection
        {
            ConnectionString = "Data Source=" + dataSource
        };

        connection.Open();
        
        SQLiteCommand command = new SQLiteCommand(connection);
 
        // Erstellen der Tabelle, sofern diese noch nicht existiert.
        command.CommandText = "CREATE TABLE IF NOT EXISTS beispiel ( id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, name VARCHAR(100) NOT NULL);";
        command.ExecuteNonQuery();
         
        // Einfügen eines Test-Datensatzes.
        command.CommandText = "INSERT INTO beispiel (id, name) VALUES(NULL, 'Test-Datensatz!')";
        command.ExecuteNonQuery();
 
        // Freigabe der Ressourcen.
        command.Dispose();
        
        command = new SQLiteCommand(connection);
 
        // Auslesen des zuletzt eingefügten Datensatzes.
        command.CommandText = "SELECT id, name FROM beispiel ORDER BY id DESC LIMIT 0, 1";
         
        SQLiteDataReader reader = command.ExecuteReader();
         
        while (reader.Read())
        {
            GD.Print("Dies ist der " + reader[0].ToString() + ". eingefügte Datensatz mit dem Wert: \"{" + reader[1].ToString() + "}\"");
        }
         
        // Beenden des Readers und Freigabe aller Ressourcen.
        reader.Close();
        reader.Dispose();
        
        command.Dispose();
        
        connection.Close();
        connection.Dispose();
    }
}
