using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService" in both code and config file together.
[ServiceContract]
public interface IService
{
	[OperationContract]
	string LogData(string uname, string PWord);
	
	[OperationContract]
	string[] nameList();

	[OperationContract]
	string[] priceList();

	[OperationContract]
	string[] imglist();

	[OperationContract]
	string[] pdail();


}

