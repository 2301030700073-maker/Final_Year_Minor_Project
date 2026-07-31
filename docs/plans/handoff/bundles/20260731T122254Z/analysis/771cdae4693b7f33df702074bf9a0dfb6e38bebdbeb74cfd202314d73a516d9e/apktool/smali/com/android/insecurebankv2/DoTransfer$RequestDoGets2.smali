.class public Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;
.super Landroid/os/AsyncTask;
.source "DoTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/insecurebankv2/DoTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestDoGets2"
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
.field final synthetic this$0:Lcom/android/insecurebankv2/DoTransfer;


# direct methods
.method public constructor <init>(Lcom/android/insecurebankv2/DoTransfer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/insecurebankv2/DoTransfer;

    .line 246
    iput-object p1, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public AsyncHttpPost(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .line 253
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 246
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "params"    # [Ljava/lang/String;

    .line 260
    const-string v0, ""

    .line 261
    .local v0, "str":Ljava/lang/String;
    const-string v0, "dinesh"

    .line 262
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 264
    .local v1, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v4, v4, Lcom/android/insecurebankv2/DoTransfer;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v4, v4, Lcom/android/insecurebankv2/DoTransfer;->serverip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v4, v4, Lcom/android/insecurebankv2/DoTransfer;->serverport:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/getaccounts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 265
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpPost;
    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    const-string v4, "mySharedPreferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/insecurebankv2/DoTransfer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 266
    .local v3, "settings":Landroid/content/SharedPreferences;
    const-string v4, "EncryptedUsername"

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "username":Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 270
    .local v5, "usernameBase64Byte":[B
    :try_start_0
    iget-object v7, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v5, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v7, Lcom/android/insecurebankv2/DoTransfer;->usernameBase64ByteString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    goto :goto_0

    .line 271
    :catch_0
    move-exception v7

    .line 273
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 276
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    const-string v7, "superSecurePassword"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, "password":Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    invoke-static {v8, v6}, Lcom/android/insecurebankv2/DoTransfer;->access$000(Lcom/android/insecurebankv2/DoTransfer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/insecurebankv2/DoTransfer;->passNormalized:Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    goto :goto_1

    .line 280
    :catch_1
    move-exception v7

    .line 282
    .local v7, "e1":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    .end local v7    # "e1":Ljava/lang/Exception;
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 286
    .local v7, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "username"

    iget-object v10, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v10, v10, Lcom/android/insecurebankv2/DoTransfer;->usernameBase64ByteString:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "password"

    iget-object v10, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v10, v10, Lcom/android/insecurebankv2/DoTransfer;->passNormalized:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :try_start_2
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v8, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 293
    goto :goto_2

    .line 290
    :catch_2
    move-exception v8

    .line 292
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 296
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_3
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    iput-object v9, v8, Lcom/android/insecurebankv2/DoTransfer;->responseBody:Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 300
    goto :goto_3

    .line 297
    :catch_3
    move-exception v8

    .line 299
    .local v8, "e2":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 302
    .end local v8    # "e2":Ljava/io/IOException;
    :goto_3
    :try_start_4
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, v9, Lcom/android/insecurebankv2/DoTransfer;->responseBody:Lorg/apache/http/HttpResponse;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    iput-object v9, v8, Lcom/android/insecurebankv2/DoTransfer;->in:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 306
    goto :goto_4

    .line 303
    :catch_4
    move-exception v8

    .line 305
    .local v8, "e1":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    .end local v8    # "e1":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v10, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v10, v10, Lcom/android/insecurebankv2/DoTransfer;->in:Ljava/io/InputStream;

    invoke-virtual {v9, v10}, Lcom/android/insecurebankv2/DoTransfer;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/insecurebankv2/DoTransfer;->result:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 313
    goto :goto_5

    .line 310
    :catch_5
    move-exception v8

    .line 312
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 314
    .end local v8    # "e":Ljava/io/IOException;
    :goto_5
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, v9, Lcom/android/insecurebankv2/DoTransfer;->result:Ljava/lang/String;

    const-string v10, "\n"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/insecurebankv2/DoTransfer;->result:Ljava/lang/String;

    .line 316
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v8, v8, Lcom/android/insecurebankv2/DoTransfer;->result:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 317
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v8, v8, Lcom/android/insecurebankv2/DoTransfer;->result:Ljava/lang/String;

    const-string v9, "Correct"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 319
    :try_start_6
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    new-instance v9, Lorg/json/JSONObject;

    iget-object v10, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v10, v10, Lcom/android/insecurebankv2/DoTransfer;->result:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v9, v8, Lcom/android/insecurebankv2/DoTransfer;->jsonObject:Lorg/json/JSONObject;

    .line 320
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, v9, Lcom/android/insecurebankv2/DoTransfer;->jsonObject:Lorg/json/JSONObject;

    const-string v10, "from"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/insecurebankv2/DoTransfer;->acc1:Ljava/lang/String;

    .line 321
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, v9, Lcom/android/insecurebankv2/DoTransfer;->jsonObject:Lorg/json/JSONObject;

    const-string v10, "to"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/insecurebankv2/DoTransfer;->acc2:Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 325
    goto :goto_6

    .line 322
    :catch_6
    move-exception v8

    .line 324
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 329
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_6
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    new-instance v9, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2$1;

    invoke-direct {v9, p0}, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2$1;-><init>(Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;)V

    invoke-virtual {v8, v9}, Lcom/android/insecurebankv2/DoTransfer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 341
    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 246
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .line 348
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 246
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/String;

    .line 350
    return-void
.end method
