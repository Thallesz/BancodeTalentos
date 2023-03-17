using System;
using System.Net;
using System.Net.Mail;

namespace TccBancoTalentos
{
    class Program
    {
        static void Main(string[] args)
        {
            // Configure as credenciais do remetente do e-mail
            string remetente = "0000887027@senaimgaluno.com.br";
            string destinatario = "0113271@senaimgdocente.com.br";
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
            mailMessage.Subject = "Sugestões de melhoria";
            mailMessage.Subject = "Alguma reclamação";
            mailMessage.Subject = "fale conosco";
            mailMessage.Subject = "notou algum erro no sistema?";
            mailMessage.Body = "então fale com a gente a partir deste email:";

            try
            {
                smtpClient.Send(mailMessage);
                Console.WriteLine("Email enviado!");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Não foi possível enviar o email: " + ex.Message);
            }
        }
    }
}