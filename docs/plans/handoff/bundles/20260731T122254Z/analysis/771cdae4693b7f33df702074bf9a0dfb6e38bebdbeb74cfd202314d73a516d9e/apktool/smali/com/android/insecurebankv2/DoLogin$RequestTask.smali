.class Lcom/android/insecurebankv2/DoLogin$RequestTask;
.super Landroid/os/AsyncTask;
.source "DoLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/insecurebankv2/DoLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestTask"
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
.field final synthetic this$0:Lcom/android/insecurebankv2/DoLogin;


# direct methods
.method constructor <init>(Lcom/android/insecurebankv2/DoLogin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/insecurebankv2/DoLogin;

    .line 93
    iput-object p1, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

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

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, v0, Lcom/android/insecurebankv2/DoLogin;->reader:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 207
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 209
    .local v1, "line":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v2, v2, Lcom/android/insecurebankv2/DoLogin;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_0

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 211
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private saveCreds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    const-string v1, "mySharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/insecurebankv2/DoLogin;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 188
    .local v0, "mySharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 189
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iput-object p1, v2, Lcom/android/insecurebankv2/DoLogin;->rememberme_username:Ljava/lang/String;

    .line 190
    iget-object v2, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iput-object p2, v2, Lcom/android/insecurebankv2/DoLogin;->rememberme_password:Ljava/lang/String;

    .line 191
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoLogin;->rememberme_username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 192
    .local v2, "base64Username":Ljava/lang/String;
    new-instance v3, Lcom/android/insecurebankv2/CryptoClass;

    invoke-direct {v3}, Lcom/android/insecurebankv2/CryptoClass;-><init>()V

    .line 193
    .local v3, "crypt":Lcom/android/insecurebankv2/CryptoClass;
    iget-object v4, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v5, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v5, v5, Lcom/android/insecurebankv2/DoLogin;->rememberme_password:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/insecurebankv2/CryptoClass;->aesEncryptedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/insecurebankv2/DoLogin;->superSecurePassword:Ljava/lang/String;

    .line 194
    const-string v4, "EncryptedUsername"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    const-string v4, "superSecurePassword"

    iget-object v5, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v5, v5, Lcom/android/insecurebankv2/DoLogin;->superSecurePassword:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    return-void
.end method

.method private trackUserLogins()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    new-instance v1, Lcom/android/insecurebankv2/DoLogin$RequestTask$1;

    invoke-direct {v1, p0}, Lcom/android/insecurebankv2/DoLogin$RequestTask$1;-><init>(Lcom/android/insecurebankv2/DoLogin$RequestTask;)V

    invoke-virtual {v0, v1}, Lcom/android/insecurebankv2/DoLogin;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/insecurebankv2/DoLogin$RequestTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/DoLogin$RequestTask;->postData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Double;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Double;

    .line 107
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Integer;

    .line 108
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

    .line 116
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 117
    .local v0, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoLogin;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoLogin;->serverip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoLogin;->serverport:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/login"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v4, v4, Lcom/android/insecurebankv2/DoLogin;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v4, v4, Lcom/android/insecurebankv2/DoLogin;->serverip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v4, v4, Lcom/android/insecurebankv2/DoLogin;->serverport:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/devlogin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, "httppost2":Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v3, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "username"

    iget-object v6, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v6, v6, Lcom/android/insecurebankv2/DoLogin;->username:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "password"

    iget-object v6, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v6, v6, Lcom/android/insecurebankv2/DoLogin;->password:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v4, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v4, v4, Lcom/android/insecurebankv2/DoLogin;->username:Ljava/lang/String;

    const-string v5, "devadmin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v4, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 133
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 133
    .local v4, "responseBody":Lorg/apache/http/HttpResponse;
    goto :goto_0

    .line 135
    .end local v4    # "responseBody":Lorg/apache/http/HttpResponse;
    :cond_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v4, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 137
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 140
    .restart local v4    # "responseBody":Lorg/apache/http/HttpResponse;
    :goto_0
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 141
    .local v5, "in":Ljava/io/InputStream;
    iget-object v6, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    invoke-direct {p0, v5}, Lcom/android/insecurebankv2/DoLogin$RequestTask;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/insecurebankv2/DoLogin;->result:Ljava/lang/String;

    .line 142
    iget-object v6, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v7, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v7, v7, Lcom/android/insecurebankv2/DoLogin;->result:Ljava/lang/String;

    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/insecurebankv2/DoLogin;->result:Ljava/lang/String;

    .line 143
    iget-object v6, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v6, v6, Lcom/android/insecurebankv2/DoLogin;->result:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 144
    iget-object v6, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v6, v6, Lcom/android/insecurebankv2/DoLogin;->result:Ljava/lang/String;

    const-string v7, "Correct Credentials"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 145
    const-string v6, "Successful Login:"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", account="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v8, v8, Lcom/android/insecurebankv2/DoLogin;->username:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v8, v8, Lcom/android/insecurebankv2/DoLogin;->password:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v6, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v6, v6, Lcom/android/insecurebankv2/DoLogin;->username:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v7, v7, Lcom/android/insecurebankv2/DoLogin;->password:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/insecurebankv2/DoLogin$RequestTask;->saveCreds(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/android/insecurebankv2/DoLogin$RequestTask;->trackUserLogins()V

    .line 148
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    invoke-virtual {v7}, Lcom/android/insecurebankv2/DoLogin;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/android/insecurebankv2/PostLogin;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v6, "pL":Landroid/content/Intent;
    const-string v7, "uname"

    iget-object v8, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    iget-object v8, v8, Lcom/android/insecurebankv2/DoLogin;->username:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object v7, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    invoke-virtual {v7, v6}, Lcom/android/insecurebankv2/DoLogin;->startActivity(Landroid/content/Intent;)V

    .line 151
    .end local v6    # "pL":Landroid/content/Intent;
    goto :goto_1

    .line 152
    :cond_1
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    invoke-virtual {v7}, Lcom/android/insecurebankv2/DoLogin;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/android/insecurebankv2/WrongLogin;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v6, "xi":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/insecurebankv2/DoLogin$RequestTask;->this$0:Lcom/android/insecurebankv2/DoLogin;

    invoke-virtual {v7, v6}, Lcom/android/insecurebankv2/DoLogin;->startActivity(Landroid/content/Intent;)V

    .line 156
    .end local v6    # "xi":Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void
.end method
