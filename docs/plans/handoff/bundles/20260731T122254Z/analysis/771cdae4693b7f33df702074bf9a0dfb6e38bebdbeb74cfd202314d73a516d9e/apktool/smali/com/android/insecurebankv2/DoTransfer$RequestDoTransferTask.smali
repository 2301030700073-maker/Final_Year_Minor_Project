.class public Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;
.super Landroid/os/AsyncTask;
.source "DoTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/insecurebankv2/DoTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestDoTransferTask"
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

    .line 114
    iput-object p1, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public AsyncHttpTransferPost(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .line 122
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 114
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "params"    # [Ljava/lang/String;

    .line 129
    const-string v0, ""

    .line 130
    .local v0, "str":Ljava/lang/String;
    const-string v0, "dinesh"

    .line 131
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 132
    .local v1, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v4, v4, Lcom/android/insecurebankv2/DoTransfer;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v4, v4, Lcom/android/insecurebankv2/DoTransfer;->serverip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v4, v4, Lcom/android/insecurebankv2/DoTransfer;->serverport:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/dotransfer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 133
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpPost;
    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    const-string v4, "mySharedPreferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/insecurebankv2/DoTransfer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 134
    .local v3, "settings":Landroid/content/SharedPreferences;
    const-string v4, "EncryptedUsername"

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "username":Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 137
    .local v5, "usernameBase64Byte":[B
    :try_start_0
    iget-object v7, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v5, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v7, Lcom/android/insecurebankv2/DoTransfer;->usernameBase64ByteString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_0

    .line 138
    :catch_0
    move-exception v7

    .line 140
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 142
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    const-string v7, "superSecurePassword"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "password":Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

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

    .line 149
    goto :goto_1

    .line 146
    :catch_1
    move-exception v7

    .line 148
    .local v7, "e1":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    .end local v7    # "e1":Ljava/lang/Exception;
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v7, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "username"

    iget-object v10, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v10, v10, Lcom/android/insecurebankv2/DoTransfer;->usernameBase64ByteString:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "password"

    iget-object v10, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v10, v10, Lcom/android/insecurebankv2/DoTransfer;->passNormalized:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    const v10, 0x7f07002b

    invoke-virtual {v9, v10}, Lcom/android/insecurebankv2/DoTransfer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, v8, Lcom/android/insecurebankv2/DoTransfer;->from:Landroid/widget/EditText;

    .line 154
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    const v10, 0x7f07002d

    invoke-virtual {v9, v10}, Lcom/android/insecurebankv2/DoTransfer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, v8, Lcom/android/insecurebankv2/DoTransfer;->to:Landroid/widget/EditText;

    .line 155
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    const v10, 0x7f07002a

    invoke-virtual {v9, v10}, Lcom/android/insecurebankv2/DoTransfer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, v8, Lcom/android/insecurebankv2/DoTransfer;->amount:Landroid/widget/EditText;

    .line 156
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "from_acc"

    iget-object v10, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v10, v10, Lcom/android/insecurebankv2/DoTransfer;->from:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "to_acc"

    iget-object v10, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v10, v10, Lcom/android/insecurebankv2/DoTransfer;->to:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "amount"

    iget-object v10, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v10, v10, Lcom/android/insecurebankv2/DoTransfer;->amount:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :try_start_2
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v8, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 165
    goto :goto_2

    .line 162
    :catch_2
    move-exception v8

    .line 164
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 168
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_3
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    iput-object v9, v8, Lcom/android/insecurebankv2/DoTransfer;->responseBody:Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 172
    goto :goto_3

    .line 169
    :catch_3
    move-exception v8

    .line 171
    .local v8, "e1":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    .end local v8    # "e1":Ljava/io/IOException;
    :goto_3
    :try_start_4
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, v9, Lcom/android/insecurebankv2/DoTransfer;->responseBody:Lorg/apache/http/HttpResponse;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    iput-object v9, v8, Lcom/android/insecurebankv2/DoTransfer;->in:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 178
    goto :goto_4

    .line 175
    :catch_4
    move-exception v8

    .line 177
    .local v8, "e1":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    .end local v8    # "e1":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v10, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v10, v10, Lcom/android/insecurebankv2/DoTransfer;->in:Ljava/io/InputStream;

    invoke-virtual {v9, v10}, Lcom/android/insecurebankv2/DoTransfer;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/insecurebankv2/DoTransfer;->result:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 184
    goto :goto_5

    .line 181
    :catch_5
    move-exception v8

    .line 183
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 185
    .end local v8    # "e":Ljava/io/IOException;
    :goto_5
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v9, v9, Lcom/android/insecurebankv2/DoTransfer;->result:Ljava/lang/String;

    const-string v10, "\n"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/insecurebankv2/DoTransfer;->result:Ljava/lang/String;

    .line 186
    iget-object v8, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    new-instance v9, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;

    invoke-direct {v9, p0}, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;-><init>(Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;)V

    invoke-virtual {v8, v9}, Lcom/android/insecurebankv2/DoTransfer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 237
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .line 241
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/String;

    .line 243
    return-void
.end method
