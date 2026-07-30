.class public Lcom/android/contacts/vcard/ImportProcessor;
.super Lcom/android/contacts/vcard/ProcessorBase;
.source "ImportProcessor.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# instance fields
.field private volatile mCanceled:Z

.field private mCurrentCount:I

.field private volatile mDone:Z

.field private final mFailedUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

.field private final mJobId:I

.field private final mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/vcard/VCardService;

.field private mTotalCount:I

.field private mVCardParser:Lcom/android/vcard/VCardParser;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/VCardImportExportListener;Lcom/android/contacts/vcard/ImportRequest;I)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/android/contacts/vcard/ProcessorBase;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mFailedUris:Ljava/util/List;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCurrentCount:I

    .line 66
    iput v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mTotalCount:I

    .line 70
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 71
    invoke-virtual {p1}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 72
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    .line 74
    iput-object p3, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    .line 75
    iput p4, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    return-void
.end method

.method private readOneVCard(Ljava/io/InputStream;ILjava/lang/String;Lcom/android/vcard/VCardInterpreter;[I)Z
    .locals 6

    .line 220
    array-length p3, p5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_7

    .line 222
    aget v2, p5, v1

    if-lez v1, :cond_0

    .line 224
    :try_start_0
    instance-of v3, p4, Lcom/android/vcard/VCardEntryConstructor;

    if-eqz v3, :cond_0

    .line 226
    move-object v3, p4

    check-cast v3, Lcom/android/vcard/VCardEntryConstructor;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntryConstructor;->clear()V

    .line 233
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 235
    :try_start_1
    new-instance v2, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v2, p2}, Lcom/android/vcard/VCardParser_V30;-><init>(I)V

    goto :goto_1

    .line 236
    :cond_1
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v2, p2}, Lcom/android/vcard/VCardParser_V21;-><init>(I)V

    :goto_1
    iput-object v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 237
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "VCardImport"

    const-string v3, "ImportProcessor already recieves cancel request, so send cancel request to vCard parser too."

    .line 238
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 242
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :try_start_2
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, p1, p4}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    .line 268
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_3
    const/4 v0, 0x1

    goto :goto_6

    :catchall_0
    move-exception v2

    .line 242
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    goto :goto_5

    :catch_1
    move-exception v2

    :try_start_6
    const-string v3, "VCardImport"

    .line 264
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p1, :cond_5

    .line 268
    :goto_2
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_2
    nop

    add-int/lit8 v2, p3, -0x1

    if-ne v1, v2, :cond_4

    :try_start_8
    const-string v2, "VCardImport"

    const-string v3, "Appropriate version for this vCard is not found."

    .line 259
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_3

    :catch_4
    move-exception v2

    .line 256
    :goto_3
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const-string v4, "VCardImport"

    const-string v5, "Failed to read vcard"

    invoke-static {v3, v4, v5, v2}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz p1, :cond_5

    goto :goto_2

    :catch_5
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_5
    if-eqz p1, :cond_6

    .line 268
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 272
    :catch_6
    :cond_6
    throw p2

    :cond_7
    :goto_6
    return v0
.end method

.method private runInternal()V
    .locals 14

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 124
    iget v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "vCard import (id: %d) has started."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VCardImport"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    .line 126
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v4

    const-string v5, ")"

    if-eqz v4, :cond_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canceled before actually handling parameter ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/contacts/vcard/ImportRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_0
    iget v4, v1, Lcom/android/contacts/vcard/ImportRequest;->vcardVersion:I

    if-nez v4, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 136
    fill-array-data v4, :array_0

    move-object v12, v4

    goto :goto_0

    :cond_1
    new-array v6, v0, [I

    aput v4, v6, v3

    move-object v12, v6

    .line 146
    :goto_0
    iget-object v4, v1, Lcom/android/contacts/vcard/ImportRequest;->uri:Landroid/net/Uri;

    .line 147
    iget-object v6, v1, Lcom/android/contacts/vcard/ImportRequest;->account:Landroid/accounts/Account;

    .line 148
    iget v9, v1, Lcom/android/contacts/vcard/ImportRequest;->estimatedVCardType:I

    .line 149
    iget-object v10, v1, Lcom/android/contacts/vcard/ImportRequest;->estimatedCharset:Ljava/lang/String;

    .line 150
    iget v7, v1, Lcom/android/contacts/vcard/ImportRequest;->entryCount:I

    .line 151
    iget v8, p0, Lcom/android/contacts/vcard/ImportProcessor;->mTotalCount:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/android/contacts/vcard/ImportProcessor;->mTotalCount:I

    .line 153
    new-instance v11, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v11, v9, v6, v10}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 155
    new-instance v6, Lcom/android/vcard/VCardEntryCommitter;

    iget-object v7, p0, Lcom/android/contacts/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v6, v7}, Lcom/android/vcard/VCardEntryCommitter;-><init>(Landroid/content/ContentResolver;)V

    .line 156
    invoke-virtual {v11, v6}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 157
    invoke-virtual {v11, p0}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    const/4 v13, 0x0

    if-eqz v4, :cond_2

    .line 163
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start importing one vCard (Uri: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1

    .line 165
    :cond_2
    iget-object v7, v1, Lcom/android/contacts/vcard/ImportRequest;->data:[B

    if-eqz v7, :cond_3

    const-string v7, "start importing one vCard (byte[])"

    .line 166
    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v1, v1, Lcom/android/contacts/vcard/ImportRequest;->data:[B

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v7

    goto :goto_1

    :cond_3
    move-object v1, v13

    :goto_1
    if-eqz v1, :cond_4

    move-object v7, p0

    move-object v8, v1

    .line 171
    :try_start_1
    invoke-direct/range {v7 .. v12}, Lcom/android/contacts/vcard/ImportProcessor;->readOneVCard(Ljava/io/InputStream;ILjava/lang/String;Lcom/android/vcard/VCardInterpreter;[I)Z

    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v13, v1

    goto :goto_3

    :catch_0
    nop

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v1, :cond_7

    .line 179
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    nop

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v13, :cond_5

    :try_start_3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 184
    :catch_2
    :cond_5
    throw v0

    :catch_3
    move-object v1, v13

    :goto_4
    if-eqz v1, :cond_6

    .line 179
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_6
    const/4 v7, 0x0

    .line 186
    :cond_7
    :goto_5
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    iget v8, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    invoke-virtual {v1, v8, v7}, Lcom/android/contacts/vcard/VCardService;->handleFinishImportNotification(IZ)V

    if-eqz v7, :cond_c

    .line 191
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vCard import has been canceled (uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 195
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully finished importing one vCard file: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {v6}, Lcom/android/vcard/VCardEntryCommitter;->getCreatedUris()Ljava/util/ArrayList;

    move-result-object v1

    .line 197
    iget-object v4, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    if-eqz v4, :cond_d

    if-eqz v1, :cond_9

    .line 198
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v0, :cond_9

    .line 199
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    iget-object v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    iget v4, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0, v2, v4, v1}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportFinished(Lcom/android/contacts/vcard/ImportRequest;ILandroid/net/Uri;)V

    goto :goto_6

    :cond_9
    if-eqz v1, :cond_a

    .line 201
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    const-string v0, "Created Uris is null or 0 length though the creation itself is successful."

    .line 203
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_b
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    iget v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    invoke-interface {v0, v1, v2, v13}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportFinished(Lcom/android/contacts/vcard/ImportRequest;ILandroid/net/Uri;)V

    goto :goto_6

    .line 211
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read one vCard file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mFailedUris:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_6
    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 1

    monitor-enter p0

    .line 281
    :try_start_0
    iget-boolean p1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCanceled:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 284
    iput-boolean p1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCanceled:Z

    .line 285
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 286
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 289
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 289
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 282
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    .line 295
    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 301
    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEnd()V
    .locals 0

    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 7

    .line 90
    iget v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCurrentCount:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCurrentCount:I

    .line 91
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    if-eqz v1, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    iget v3, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    iget v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mTotalCount:I

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportParsed(Lcom/android/contacts/vcard/ImportRequest;ILcom/android/vcard/VCardEntry;II)Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    iget v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    invoke-virtual {v0, v1, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v0, 0x1

    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportProcessor;->runInternal()V

    .line 111
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    iget-object v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    iget v3, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportCanceled(Lcom/android/contacts/vcard/ImportRequest;I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 117
    :cond_0
    monitor-enter p0

    .line 118
    :try_start_1
    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z

    .line 119
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 115
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const-string v3, "VCardImport"

    const-string v4, "Vcard import failed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    monitor-enter p0

    .line 118
    :try_start_3
    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z

    .line 119
    monitor-exit p0

    :goto_1
    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 117
    :goto_2
    monitor-enter p0

    .line 118
    :try_start_4
    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z

    .line 119
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 120
    throw v1

    :catchall_3
    move-exception v0

    .line 119
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
