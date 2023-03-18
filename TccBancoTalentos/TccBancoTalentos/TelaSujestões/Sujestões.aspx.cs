using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TccBancoTalentos.TelaSujestões
{
    public partial class Sujestões : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            // Configure as credenciais do remetente do e-mail
            string remetente = "0000887027@senaimgaluno.com.br";
            string destinatario = "0000886175@senaimgaluno.com.br";
            string senha = "Lraa12345";

            var smtpClient = new SmtpClient("smtp.gmail.com");
            smtpClient.Port = 587;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.EnableSsl = true;
            smtpClient.Timeout = 10000;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.Credentials = new NetworkCredential(remetente, senha);

            var mailMessage = new MailMessage();
            mailMessage.From = new MailAddress(remetente);
            mailMessage.To.Add(destinatario);
            mailMessage.Subject = "Converse conosco";
            mailMessage.Body = "Tem alguma sujestão que pode ajudar na melhoria do site ou deseja se juntar a equipe?";

            try
            {
                smtpClient.Send(mailMessage);
                Console.WriteLine("Email enviado!");
                SiteMaster.ExibirAlert(this, "Email enviado!");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Não foi possível enviar o email: " + ex.Message);
                SiteMaster.ExibirAlert(this, "Não foi possível enviar o email!");
            }
        }
    }
}