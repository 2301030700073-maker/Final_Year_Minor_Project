.class public Lcom/android/contacts/vcard/ExportProcessor;
.super Lcom/android/contacts/vcard/ProcessorBase;
.source "ExportProcessor.java"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final mCallingActivity:Ljava/lang/String;

.field private volatile mCanceled:Z

.field private volatile mDone:Z

.field private final mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

.field private final mJobId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/vcard/VCardService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/ExportRequest;ILjava/lang/String;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/android/contacts/vcard/ProcessorBase;-><init>()V

    .line 64
    new-instance v0, Lcom/android/contacts/vcard/ExportProcessor$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/vcard/ExportProcessor$1;-><init>(Lcom/android/contacts/vcard/ExportProcessor;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->handler:Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 78
    invoke-virtual {p1}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 79
    iget-object p1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const-string v0, "notification"

    .line 80
    invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    .line 81
    iput-object p2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    .line 82
    iput p3, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    .line 83
    iput-object p4, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCallingActivity:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/vcard/ExportProcessor;)Lcom/android/contacts/vcard/VCardService;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    return-object p0
.end method

.method private doCancelNotification()V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    iget-object v2, v2, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    .line 278
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f100123

    .line 277
    invoke-virtual {v0, v2, v1}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 280
    invoke-static {v1, v0}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    const-string v3, "VCardServiceProgress"

    invoke-virtual {v1, v3, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 288
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    iget-object v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCallingActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 290
    invoke-static {v1, p1, p2, v0}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object p1

    .line 292
    iget-object p2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    iget v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    const-string v1, "VCardServiceProgress"

    invoke-virtual {p2, v1, v0, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private doFinishNotificationWithShareAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/x-vcard"

    .line 304
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 305
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const p3, 0x10000001

    .line 308
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 310
    iget-object p3, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 311
    invoke-static {p3, p1, p2, v0}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object p1

    .line 313
    iget-object p2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    iget p3, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    const-string v0, "VCardServiceProgress"

    invoke-virtual {p2, v0, p3, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private doProgressNotification(Landroid/net/Uri;II)V
    .locals 8

    .line 263
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 264
    iget-object p1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const v1, 0x7f100121

    .line 265
    invoke-virtual {p1, v1, v0}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 266
    iget-object p1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v0, 0x7f100122

    .line 267
    invoke-virtual {p1, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 268
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    iget v4, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    const/4 v1, 0x2

    move v6, p2

    move v7, p3

    .line 269
    invoke-static/range {v0 .. v7}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object p1

    .line 272
    iget-object p2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    iget p3, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {p2, p3, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private isLocalFile(Landroid/net/Uri;)Z
    .locals 2

    .line 245
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    .line 246
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v1, 0x7f1000bd

    invoke-virtual {v0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private runInternal()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "IOException is thrown during close(). Ignored. "

    const-string v3, "VCardExport"

    .line 112
    iget-object v0, v1, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 117
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/vcard/ExportProcessor;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v0, "Export request is cancelled before handling the request"

    .line 118
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 240
    :goto_0
    iget-object v0, v1, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    iget v2, v1, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v0, v2, v4}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    return-void

    .line 121
    :cond_0
    :try_start_1
    iget-object v7, v0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 124
    :try_start_2
    iget-object v8, v1, Lcom/android/contacts/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v8
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 136
    :try_start_3
    iget-object v9, v0, Lcom/android/contacts/vcard/ExportRequest;->exportType:Ljava/lang/String;

    .line 138
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 139
    iget-object v9, v1, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v10, 0x7f10009a

    .line 140
    invoke-virtual {v9, v10}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 139
    invoke-static {v9}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    .line 142
    :cond_1
    invoke-static {v9}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v9

    .line 145
    :goto_1
    new-instance v15, Lcom/android/vcard/VCardComposer;

    iget-object v10, v1, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v15, v10, v9, v6}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 152
    :try_start_4
    new-instance v9, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-direct {v10, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 153
    :try_start_5
    sget-object v16, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 155
    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_id"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    move-object v10, v15

    move-object/from16 v17, v15

    move-object v15, v8

    :try_start_6
    invoke-virtual/range {v10 .. v16}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 158
    invoke-virtual/range {v17 .. v17}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initialization of vCard composer failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {v1, v0}, Lcom/android/contacts/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v7, v1, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v8, 0x7f10012b

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v4

    .line 163
    invoke-virtual {v7, v8, v6}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-direct {v1, v0, v5}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 231
    invoke-virtual/range {v17 .. v17}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 235
    :try_start_7
    invoke-virtual {v9}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 169
    :cond_2
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Lcom/android/vcard/VCardComposer;->getCount()I

    move-result v8

    if-nez v8, :cond_3

    .line 171
    iget-object v0, v1, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v6, 0x7f100130

    .line 172
    invoke-virtual {v0, v6}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-direct {v1, v0, v5}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 231
    invoke-virtual/range {v17 .. v17}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 235
    :try_start_9
    invoke-virtual {v9}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_3
    const/4 v10, 0x1

    .line 178
    :goto_3
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_6

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/vcard/ExportProcessor;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v0, "Export request is cancelled during composing vCard"

    .line 180
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 231
    invoke-virtual/range {v17 .. v17}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 235
    :try_start_b
    invoke-virtual {v9}, Ljava/io/Writer;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v5, v0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 184
    :cond_4
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 199
    :try_start_d
    rem-int/lit8 v11, v10, 0x64

    if-ne v11, v6, :cond_5

    .line 200
    invoke-direct {v1, v7, v8, v10}, Lcom/android/contacts/vcard/ExportProcessor;->doProgressNotification(Landroid/net/Uri;II)V

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 186
    :catch_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to read a contact: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {v1, v0}, Lcom/android/contacts/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v7, v1, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v8, 0x7f10012d

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v4

    .line 191
    invoke-virtual {v7, v8, v6}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-direct {v1, v0, v5}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 231
    invoke-virtual/range {v17 .. v17}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 235
    :try_start_e
    invoke-virtual {v9}, Ljava/io/Writer;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object v5, v0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    .line 204
    :cond_6
    :try_start_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Successfully finished exporting vCard "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v8, v1, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/contacts/vcard/VCardService;->updateMediaScanner(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 212
    :try_start_10
    iget-object v0, v1, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-static {v0, v7}, Lcom/android/contacts/vcard/ExportVCardActivity;->getOpenableUriDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-direct {v1, v7}, Lcom/android/contacts/vcard/ExportProcessor;->isLocalFile(Landroid/net/Uri;)Z

    move-result v8

    const v10, 0x7f100126

    if-eqz v8, :cond_7

    .line 217
    iget-object v0, v1, Lcom/android/contacts/vcard/ExportProcessor;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 218
    iput v6, v0, Landroid/os/Message;->arg1:I

    .line 219
    iget-object v4, v1, Lcom/android/contacts/vcard/ExportProcessor;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    iget-object v0, v1, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 221
    invoke-virtual {v0, v10}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v5, 0x7f10023c

    .line 222
    invoke-virtual {v4, v5}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-direct {v1, v0, v4, v7}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotificationWithShareAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    .line 225
    iget-object v0, v1, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-virtual {v0, v10}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 226
    :cond_8
    iget-object v7, v1, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v8, 0x7f100125

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v0, v10, v4

    invoke-virtual {v7, v8, v10}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_4
    invoke-direct {v1, v0, v5}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 231
    :goto_5
    invoke-virtual/range {v17 .. v17}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 235
    :try_start_11
    invoke-virtual {v9}, Ljava/io/Writer;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v4, v0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_6
    iget-object v0, v1, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    iget v2, v1, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v0, v2, v6}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    return-void

    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object/from16 v5, v17

    const/4 v4, 0x1

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v17, v15

    :goto_7
    move-object v6, v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v17, v15

    move-object v6, v0

    move-object v9, v5

    :goto_8
    move-object/from16 v5, v17

    goto :goto_9

    :catch_6
    move-exception v0

    :try_start_12
    const-string v8, "FileNotFoundException thrown"

    .line 126
    invoke-static {v3, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    iget-object v8, v1, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v9, 0x7f10012c

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v4

    .line 131
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    .line 130
    invoke-virtual {v8, v9, v10}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-direct {v1, v0, v5}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    move-object v6, v0

    move-object v9, v5

    :goto_9
    if-eqz v5, :cond_9

    .line 231
    invoke-virtual {v5}, Lcom/android/vcard/VCardComposer;->terminate()V

    :cond_9
    if-eqz v9, :cond_a

    .line 235
    :try_start_13
    invoke-virtual {v9}, Ljava/io/Writer;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v5, v0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_a
    :goto_a
    iget-object v0, v1, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    iget v2, v1, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v0, v2, v4}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 241
    throw v6
.end method

.method private translateComposerError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Failed to get database information"

    .line 251
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p1, 0x7f100097

    .line 252
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "There\'s no exportable in the database"

    .line 253
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const p1, 0x7f100098

    .line 254
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "The vCard composer object is not correctly initialized"

    .line 255
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const p1, 0x7f100099

    .line 256
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 0

    monitor-enter p0

    .line 320
    :try_start_0
    iget-boolean p1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCanceled:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 323
    iput-boolean p1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 321
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getRequest()Lcom/android/contacts/vcard/ExportRequest;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    .line 329
    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCanceled:Z
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

    .line 334
    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 5

    const/4 v0, 0x1

    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportProcessor;->runInternal()V

    .line 97
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ExportProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportProcessor;->doCancelNotification()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :cond_0
    monitor-enter p0

    .line 105
    :try_start_1
    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 101
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const-string v3, "VCardExport"

    const-string v4, "Failed to process vcard export"

    invoke-static {v2, v3, v4, v1}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    :goto_1
    monitor-enter p0

    .line 105
    :try_start_3
    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z

    .line 106
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 107
    throw v1

    :catchall_2
    move-exception v0

    .line 106
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method
