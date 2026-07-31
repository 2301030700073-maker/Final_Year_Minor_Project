.class Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask$1;
.super Ljava/lang/Object;
.source "ChangePassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->postData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;


# direct methods
.method constructor <init>(Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;

    .line 152
    iput-object p1, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask$1;->this$1:Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 155
    iget-object v0, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask$1;->this$1:Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;

    iget-object v0, v0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    iget-object v0, v0, Lcom/android/insecurebankv2/ChangePassword;->result:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask$1;->this$1:Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;

    iget-object v0, v0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    iget-object v0, v0, Lcom/android/insecurebankv2/ChangePassword;->result:Ljava/lang/String;

    const-string v1, "Change Password Successful"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 160
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask$1;->this$1:Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;

    iget-object v1, v1, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    iget-object v1, v1, Lcom/android/insecurebankv2/ChangePassword;->result:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "login_response_message":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask$1;->this$1:Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;

    iget-object v2, v2, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    invoke-virtual {v2}, Lcom/android/insecurebankv2/ChangePassword;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Restart application to Continue."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 163
    iget-object v2, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask$1;->this$1:Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;

    iget-object v2, v2, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    invoke-virtual {v2}, Lcom/android/insecurebankv2/ChangePassword;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 164
    .local v2, "phoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "phoneNumber":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phonno:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    iget-object v4, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask$1;->this$1:Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;

    iget-object v4, v4, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    iget-object v5, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask$1;->this$1:Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;

    iget-object v5, v5, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    iget-object v5, v5, Lcom/android/insecurebankv2/ChangePassword;->changePassword_text:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/android/insecurebankv2/ChangePassword;->access$200(Lcom/android/insecurebankv2/ChangePassword;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v1    # "login_response_message":Ljava/lang/String;
    .end local v2    # "phoneManager":Landroid/telephony/TelephonyManager;
    .end local v3    # "phoneNumber":Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 181
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-void
.end method
