using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace hxgUtilis
{
    public class CommonUtilis
    {
        private static readonly string SERVICEURL = "http://222.73.117.169/msg/HttpBatchSendSM";
        private static readonly string SERVICEUSER = "N9563952";
        private static readonly string SERVICEPWD = "HVlZqg3bjf87d0";
        private static readonly string SIGNATURE = "【东方爱婴】";

        /// <summary>
        /// 获取二进制文件hashCode
        /// </summary>
        /// <returns></returns>
        public static int GetBinHashCode()
        {
            StreamReader read = new StreamReader("");
            return read.GetHashCode();
        }

        /// <summary>
        /// 生成6位随机数
        /// </summary>
        /// <returns></returns>
        public static string GenerateRandom()
        {
            Random rd = new Random();
            int value = rd.Next(100000, 1000000);
            return value.ToString();
        }

        //发送验证码
        public static bool SendVerification(string phoneNum, string Random)
        {
            string content = SIGNATURE + "验证码:" + Random;
            return Send(SERVICEUSER, SERVICEPWD, phoneNum, content);
        }

        private static bool Send(string account,string password,string phoneNumn,string content)
        {
            bool flag = false;

            string postStrTpl = "account={0}&pswd={1}&mobile={2}&msg={3}&needstatus=true";//&product=&extno=

            UTF8Encoding encoding = new UTF8Encoding();
            byte[] postData = encoding.GetBytes(string.Format(postStrTpl, account, password, phoneNumn, content));
            System.GC.Collect();
            HttpWebRequest myRequest = (HttpWebRequest)HttpWebRequest.Create(SERVICEURL);
            myRequest.KeepAlive = false;
            myRequest.Method = "POST";
            myRequest.ContentType = "application/x-www-form-urlencoded";
            myRequest.ContentLength = postData.Length;
            myRequest.Timeout = 5000;
            Stream newStream = myRequest.GetRequestStream();
            // Send the data.
            newStream.Write(postData, 0, postData.Length);
            newStream.Flush();
            newStream.Close();

            HttpWebResponse myResponse = (HttpWebResponse)myRequest.GetResponse();
            string responseStr = new StreamReader(myResponse.GetResponseStream()).ReadToEnd();
            string[] splites = responseStr.Split(',', '\n');
            foreach (var item in splites)
            {
                if (item == "0")
                {
                    return true;
                }
            }

            return flag;
        }
    }
}
