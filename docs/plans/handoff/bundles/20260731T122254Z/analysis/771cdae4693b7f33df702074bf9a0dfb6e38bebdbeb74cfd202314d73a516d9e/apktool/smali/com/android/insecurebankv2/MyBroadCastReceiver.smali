.class public Lcom/android/insecurebankv2/MyBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyBroadCastReceiver.java"


# static fields
.field public static final MYPREFS:Ljava/lang/String; = "mySharedPreferences"


# instance fields
.field usernameBase64ByteString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 24
    move-object/from16 v1, p2

    const-string v2, "phonenumber"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "phn":Ljava/lang/String;
    const-string v3, "newpass"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, "newpass":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 29
    :try_start_0
    const-string v4, "mySharedPreferences"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v5, 0x1

    move-object/from16 v6, p1

    :try_start_1
    invoke-virtual {v6, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 30
    .local v4, "settings":Landroid/content/SharedPreferences;
    const-string v5, "EncryptedUsername"

    const/4 v7, 0x0

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 31
    .local v5, "username":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    .line 32
    .local v8, "usernameBase64Byte":[B
    new-instance v9, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v9, v8, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v10, p0

    :try_start_2
    iput-object v9, v10, Lcom/android/insecurebankv2/MyBroadCastReceiver;->usernameBase64ByteString:Ljava/lang/String;

    .line 33
    const-string v9, "superSecurePassword"

    invoke-interface {v4, v9, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 34
    .local v7, "password":Ljava/lang/String;
    new-instance v9, Lcom/android/insecurebankv2/CryptoClass;

    invoke-direct {v9}, Lcom/android/insecurebankv2/CryptoClass;-><init>()V

    .line 35
    .local v9, "crypt":Lcom/android/insecurebankv2/CryptoClass;
    invoke-virtual {v9, v7}, Lcom/android/insecurebankv2/CryptoClass;->aesDeccryptedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 36
    .local v11, "decryptedPassword":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    .line 37
    .local v12, "textPhoneno":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updated Password from: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " to: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v15, v13

    .line 38
    .local v15, "textMessage":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v13

    .line 39
    .local v13, "smsManager":Landroid/telephony/SmsManager;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v19, v2

    :try_start_3
    const-string v2, "For the changepassword - phonenumber: "

    .line 39
    .end local v2    # "phn":Ljava/lang/String;
    .local v19, "phn":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " password is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    const/4 v1, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v12

    move-object v2, v15

    move-object v15, v1

    .line 40
    .end local v15    # "textMessage":Ljava/lang/String;
    .local v2, "textMessage":Ljava/lang/String;
    move-object/from16 v16, v2

    invoke-virtual/range {v13 .. v18}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 40
    .end local v2    # "textMessage":Ljava/lang/String;
    .end local v4    # "settings":Landroid/content/SharedPreferences;
    .end local v5    # "username":Ljava/lang/String;
    .end local v7    # "password":Ljava/lang/String;
    .end local v8    # "usernameBase64Byte":[B
    .end local v9    # "crypt":Lcom/android/insecurebankv2/CryptoClass;
    .end local v11    # "decryptedPassword":Ljava/lang/String;
    .end local v12    # "textPhoneno":Ljava/lang/String;
    .end local v13    # "smsManager":Landroid/telephony/SmsManager;
    goto :goto_2

    .line 41
    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    .line 41
    .end local v19    # "phn":Ljava/lang/String;
    .local v2, "phn":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_0

    :catch_3
    move-exception v0

    move-object/from16 v10, p0

    move-object/from16 v6, p1

    :goto_0
    move-object/from16 v19, v2

    move-object v1, v0

    .line 42
    .end local v2    # "phn":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v19    # "phn":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 46
    .end local v19    # "phn":Ljava/lang/String;
    .restart local v2    # "phn":Ljava/lang/String;
    :cond_0
    move-object/from16 v10, p0

    move-object/from16 v6, p1

    move-object/from16 v19, v2

    .line 46
    .end local v2    # "phn":Ljava/lang/String;
    .restart local v19    # "phn":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Phone number is null"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    :goto_3
    return-void
.end method
