package com.android.insecurebankv2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.telephony.SmsManager;
import android.util.Base64;
import java.io.PrintStream;

/* loaded from: classes.dex */
public class MyBroadCastReceiver extends BroadcastReceiver {
    public static final String MYPREFS = "mySharedPreferences";
    String usernameBase64ByteString;

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Exception e;
        SharedPreferences settings;
        byte[] usernameBase64Byte;
        String phn = intent.getStringExtra("phonenumber");
        String newpass = intent.getStringExtra("newpass");
        if (phn != null) {
            try {
                settings = context.getSharedPreferences("mySharedPreferences", 1);
                String username = settings.getString("EncryptedUsername", null);
                usernameBase64Byte = Base64.decode(username, 0);
            } catch (Exception e2) {
                e = e2;
            }
            try {
                this.usernameBase64ByteString = new String(usernameBase64Byte, "UTF-8");
                String password = settings.getString("superSecurePassword", null);
                CryptoClass crypt = new CryptoClass();
                String decryptedPassword = crypt.aesDeccryptedString(password);
                String textPhoneno = phn.toString();
                String textMessage = "Updated Password from: " + decryptedPassword + " to: " + newpass;
                SmsManager smsManager = SmsManager.getDefault();
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                try {
                    sb.append("For the changepassword - phonenumber: ");
                    sb.append(textPhoneno);
                    sb.append(" password is: ");
                    sb.append(textMessage);
                    printStream.println(sb.toString());
                    smsManager.sendTextMessage(textPhoneno, null, textMessage, null, null);
                    return;
                } catch (Exception e3) {
                    e = e3;
                    e.printStackTrace();
                    return;
                }
            } catch (Exception e4) {
                e = e4;
                e = e;
                e.printStackTrace();
                return;
            }
        }
        System.out.println("Phone number is null");
    }
}
