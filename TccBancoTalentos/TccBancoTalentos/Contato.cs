﻿using System;
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

            string destinatario = "09113271@senaimgdocente.com.br";

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
            mailMessage.Body = "então fale com a gente a partir deste email:";
            

            try
            {
                smtpClient.Send(mailMessage);
            }
            catch (Exception)
            {
            }
        }
    }
}