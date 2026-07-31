.class Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;
.super Landroid/os/AsyncTask;
.source "ChangePassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/insecurebankv2/ChangePassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestChangePasswordTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/insecurebankv2/ChangePassword;


# direct methods
.method constructor <init>(Lcom/android/insecurebankv2/ChangePassword;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/insecurebankv2/ChangePassword;

    .line 101
    iput-object p1, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, v0, Lcom/android/insecurebankv2/ChangePassword;->reader:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 204
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 206
    .local v1, "line":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    iget-object v2, v2, Lcom/android/insecurebankv2/ChangePassword;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 208
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->postData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Double;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Double;

    .line 118
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Integer;

    .line 121
    return-void
.end method

.method public postData(Ljava/lang/String;)V
    .locals 10
    .param p1, "valueIWantToSend"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 128
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 129
    .local v0, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    iget-object v3, v3, Lcom/android/insecurebankv2/ChangePassword;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    iget-object v3, v3, Lcom/android/insecurebankv2/ChangePassword;->serverip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    iget-object v3, v3, Lcom/android/insecurebankv2/ChangePassword;->serverport:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/changepassword"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .local v2, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "username"

    iget-object v5, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    iget-object v5, v5, Lcom/android/insecurebankv2/ChangePassword;->uname:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "newpassword"

    iget-object v5, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    iget-object v5, v5, Lcom/android/insecurebankv2/ChangePassword;->changePassword_text:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v3, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 141
    iget-object v3, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    const-string v4, "((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/insecurebankv2/ChangePassword;->access$002(Lcom/android/insecurebankv2/ChangePassword;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 142
    iget-object v3, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    iget-object v4, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    invoke-static {v4}, Lcom/android/insecurebankv2/ChangePassword;->access$000(Lcom/android/insecurebankv2/ChangePassword;)Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v5, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    iget-object v5, v5, Lcom/android/insecurebankv2/ChangePassword;->changePassword_text:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/insecurebankv2/ChangePassword;->access$102(Lcom/android/insecurebankv2/ChangePassword;Ljava/util/regex/Matcher;)Ljava/util/regex/Matcher;

    .line 145
    iget-object v3, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    invoke-static {v3}, Lcom/android/insecurebankv2/ChangePassword;->access$100(Lcom/android/insecurebankv2/ChangePassword;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 146
    .local v3, "isStrong":Z
    if-eqz v3, :cond_0

    .line 147
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 148
    .local v4, "responseBody":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 149
    .local v5, "in":Ljava/io/InputStream;
    iget-object v6, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    invoke-direct {p0, v5}, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/insecurebankv2/ChangePassword;->result:Ljava/lang/String;

    .line 150
    iget-object v6, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    iget-object v7, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    iget-object v7, v7, Lcom/android/insecurebankv2/ChangePassword;->result:Ljava/lang/String;

    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/insecurebankv2/ChangePassword;->result:Ljava/lang/String;

    .line 152
    iget-object v6, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    new-instance v7, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask$1;

    invoke-direct {v7, p0}, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask$1;-><init>(Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;)V

    invoke-virtual {v6, v7}, Lcom/android/insecurebankv2/ChangePassword;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    .end local v5    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 186
    .end local v4    # "responseBody":Lorg/apache/http/HttpResponse;
    :cond_0
    iget-object v4, p0, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;->this$0:Lcom/android/insecurebankv2/ChangePassword;

    new-instance v5, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask$2;

    invoke-direct {v5, p0}, Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask$2;-><init>(Lcom/android/insecurebankv2/ChangePassword$RequestChangePasswordTask;)V

    invoke-virtual {v4, v5}, Lcom/android/insecurebankv2/ChangePassword;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    :goto_0
    return-void
.end method
