using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using MongoDB.Bson;
using MongoDB.Driver;


// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class Service : IService
{
    private IMongoDatabase _database;
    private IMongoCollection<BsonDocument> _collection;
    public Service()
    {
        MongoClient client = new MongoClient("mongodb://localhost:27017");
        _database = client.GetDatabase("PizzaShop");
        _collection = _database.GetCollection<BsonDocument>("Users");
    }
    public string[] imglist()
    {
		string[] Imname = { "piz01.jpg", "piz02.jpg", "piz03.jpg", "piz04.jpg", "piz05.jpg", };
		return Imname;

	}

    public string LogData(string uname, string PWord)
    {
        // Query user data in MongoDB to verify login
        var filter = Builders<BsonDocument>.Filter.Eq("username", uname);
        var userDocument = _collection.Find(filter).FirstOrDefault();

        if (userDocument != null)
        {
            string storedPassword = userDocument["password"].AsString;

            if (PWord == storedPassword)
            {
                return "logig succes";
            }
            else
            {
                return "Incorrect password";
            }
        }
        else
        {
            return "User not found";
        }
    }


    public string[] nameList()
    {
		string[] names = {"Chilli Chiken","Bbq Sasuge","Thandori Chiken","hot and spicy","pork slide"};
		return names;
    }

    public string[] pdail()
    {
		string[] detail = { "Spicy veggie masala & paneer accompanied with pineapple",
							"Succulent prawns with pieces of chicken bacon, accompanied",
							"Chicken ham & pineapple with a double layer of cheese.",
							"Devilled chicken in spicy sauce with a double layer of cheese.",
							"Chicken ham & pineapple with a double layer of cheese.", };
		return detail;
					}

    public string[] priceList()
    {
        string[] prices = {"Rs. 850", "Rs. 750", "Rs. 690", "Rs. 840", "Rs. 890" };
        return prices;
    }

}