namespace Sas_Bogdan_lab7bun;
using System;
using Sas_Bogdan_lab7bun.Data;
using System.IO;
public partial class App : Application
{
    static ShoppingListDatabase database;
    public static ShoppingListDatabase Database
    {
        get
        {
            if (database == null)
            {
                database = new
               ShoppingListDatabase(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.
               LocalApplicationData), "ShoppingList.db3"));
            }
            return database;
        }
    }


    public App()
	{
		InitializeComponent();

		MainPage = new AppShell();
	}
}
