.class Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;
.super Ljava/lang/Object;
.source "DoTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;


# direct methods
.method constructor <init>(Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    .line 186
    iput-object p1, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->AsyncHttpTransferPost(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v0, v0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v0, v0, Lcom/android/insecurebankv2/DoTransfer;->result:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v0, v0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v0, v0, Lcom/android/insecurebankv2/DoTransfer;->result:Ljava/lang/String;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v0, v0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    const-string v1, "Transfer Successful!!"

    sget-object v4, Lcom/marcohc/toasteroid/Toasteroid$STYLES;->SUCCESS:Lcom/marcohc/toasteroid/Toasteroid$STYLES;

    invoke-static {v0, v1, v4, v3}, Lcom/marcohc/toasteroid/Toasteroid;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/marcohc/toasteroid/Toasteroid$STYLES;I)V

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v0, v0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer;->result:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/insecurebankv2/DoTransfer;->jsonObject:Lorg/json/JSONObject;

    .line 198
    iget-object v0, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v0, v0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v1, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v1, v1, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v1, v1, Lcom/android/insecurebankv2/DoTransfer;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "from"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/insecurebankv2/DoTransfer;->acc1:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v0, v0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v1, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v1, v1, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v1, v1, Lcom/android/insecurebankv2/DoTransfer;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "to"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/insecurebankv2/DoTransfer;->acc2:Ljava/lang/String;

    .line 200
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "message"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " From:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer;->from:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " To:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer;->to:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Amount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer;->amount:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nMessage:Success From:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer;->from:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " To:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer;->to:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Amount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer;->amount:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    .local v0, "status":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/Statements_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer;->usernameBase64ByteString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".html"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "MYFILE":Ljava/lang/String;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 206
    .local v2, "out2":Ljava/io/BufferedWriter;
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 207
    const-string v3, "<hr>"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    .end local v1    # "MYFILE":Ljava/lang/String;
    .end local v2    # "out2":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 210
    .end local v0    # "status":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 212
    :catch_1
    move-exception v0

    .line 214
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 215
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    goto/16 :goto_1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v0, v0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    const-string v1, "Transfer Failed!!"

    sget-object v4, Lcom/marcohc/toasteroid/Toasteroid$STYLES;->ERROR:Lcom/marcohc/toasteroid/Toasteroid$STYLES;

    invoke-static {v0, v1, v4, v3}, Lcom/marcohc/toasteroid/Toasteroid;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/marcohc/toasteroid/Toasteroid$STYLES;I)V

    .line 220
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message:Failure From:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer;->from:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " To:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer;->to:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Amount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer;->amount:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nMessage:Failure From:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer;->from:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " To:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer;->to:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Amount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer;->amount:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "status":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/Statements_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask$1;->this$1:Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;->this$0:Lcom/android/insecurebankv2/DoTransfer;

    iget-object v3, v3, Lcom/android/insecurebankv2/DoTransfer;->usernameBase64ByteString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".html"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "MYFILE":Ljava/lang/String;
    :try_start_3
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 226
    .restart local v2    # "out2":Ljava/io/BufferedWriter;
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 227
    const-string v3, "<hr>"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 231
    .end local v2    # "out2":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 229
    :catch_2
    move-exception v2

    .line 230
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 234
    .end local v0    # "status":Ljava/lang/String;
    .end local v1    # "MYFILE":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void
.end method
