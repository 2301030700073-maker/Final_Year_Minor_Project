.class Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardCacheThread"
.end annotation


# instance fields
.field private mCanceled:Z

.field private final mDisplayName:Ljava/lang/String;

.field private final mSource:[B

.field private final mSourceDisplayNames:[Ljava/lang/String;

.field private final mSourceUris:[Landroid/net/Uri;

.field private mVCardParser:Lcom/android/vcard/VCardParser;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;[Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 1

    .line 187
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 188
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    .line 189
    iput-object p3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceDisplayNames:[Ljava/lang/String;

    const/4 p2, 0x0

    .line 190
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    const-string p3, "power"

    .line 193
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const p3, 0x20000006

    const-string v0, "VCardImport"

    .line 194
    invoke-virtual {p1, p3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 197
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method private constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/vcard/ImportRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    .line 326
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 330
    :goto_0
    new-instance v7, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v7}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    iput-object v7, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_c

    .line 332
    :try_start_1
    new-instance v7, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v7}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 333
    :try_start_2
    new-instance v8, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v8}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 334
    :try_start_3
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v7}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 335
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v8}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 336
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v6}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_3

    .line 362
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_6

    :catch_0
    move-object v2, v7

    goto/16 :goto_a

    :catch_1
    nop

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v8, v2

    :goto_1
    move-object v2, v7

    goto/16 :goto_9

    :catch_2
    move-object v8, v2

    :catch_3
    move-object v2, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v8, v2

    goto/16 :goto_9

    :catch_4
    move-object v8, v2

    .line 339
    :goto_2
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_9

    :catch_5
    nop

    :goto_3
    if-eqz p1, :cond_1

    .line 345
    :try_start_6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_4

    .line 347
    :cond_1
    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    :goto_4
    move-object v6, v0

    .line 349
    new-instance v0, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v0}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 351
    :try_start_7
    new-instance v1, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v1}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_7
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 352
    :try_start_8
    new-instance v2, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v2}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_8
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 353
    :try_start_9
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 354
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v0, v2}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 355
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v0, v6}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_9
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v6, :cond_2

    .line 362
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_5

    :catch_6
    move-object v8, v2

    move-object v2, v1

    goto :goto_a

    :catch_7
    :cond_2
    :goto_5
    move-object v7, v1

    move-object v8, v2

    const/4 v1, 0x1

    :cond_3
    :goto_6
    if-eqz v1, :cond_4

    const/4 v5, 0x2

    :cond_4
    move v0, v5

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v8, v2

    goto :goto_7

    :catch_8
    move-object v8, v2

    goto :goto_8

    :catchall_5
    move-exception v0

    :goto_7
    move-object v2, v1

    goto :goto_9

    :catch_9
    :goto_8
    move-object v2, v1

    .line 357
    :catch_a
    :try_start_b
    new-instance v0, Lcom/android/vcard/exception/VCardException;

    const-string v1, "vCard with unspported version."

    invoke-direct {v0, v1}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_9
    if-eqz v6, :cond_5

    .line 362
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_c} :catch_d

    .line 366
    :catch_b
    :cond_5
    :try_start_d
    throw v0
    :try_end_d
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_d .. :try_end_d} :catch_d

    :catch_c
    move-object v8, v2

    :catch_d
    :goto_a
    const-string v0, "VCardImport"

    const-string v1, "Nested Exception is found (it may be false-positive)."

    .line 370
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v2

    const/4 v0, 0x1

    .line 374
    :goto_b
    new-instance v10, Lcom/android/contacts/vcard/ImportRequest;

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$500(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v2

    .line 376
    invoke-virtual {v8}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v6

    .line 377
    invoke-virtual {v8}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v8

    .line 378
    invoke-virtual {v7}, Lcom/android/vcard/VCardEntryCounter;->getCount()I

    move-result v9

    move-object v1, v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v8

    move v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/contacts/vcard/ImportRequest;-><init>(Lcom/android/contacts/model/account/AccountWithDataSet;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V

    return-object v10
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    .line 387
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Lcom/android/vcard/VCardParser;->cancel()V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VCardImport"

    const-string v1, "WakeLock is being held."

    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public getSourceUris()[Landroid/net/Uri;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "VCardImport"

    const-string v0, "Cancel request has come. Abort caching vCard."

    .line 394
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->cancel()V

    return-void
.end method

.method public run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "Cannot unbind service connection"

    const-string v3, "Finished caching vCard."

    const-string v4, "VCardImport"

    const-string v0, "vCard cache thread starts running."

    .line 210
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 216
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const v5, 0x7f10012e

    const/4 v6, 0x0

    .line 218
    :try_start_0
    iget-boolean v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "vCard cache operation is canceled."

    const/4 v8, 0x1

    if-ne v0, v8, :cond_0

    .line 219
    :try_start_1
    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 294
    :try_start_2
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v3, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 296
    :goto_0
    iget-object v3, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3, v4, v2, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    :goto_1
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 300
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v0, v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 301
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 233
    :cond_0
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    iget-object v8, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const v9, 0x7f100131

    const-string v10, "Failed to cache vcard"

    if-eqz v8, :cond_1

    .line 236
    :try_start_4
    iget-object v7, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    iget-object v8, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    invoke-direct {v1, v7, v6, v8}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/vcard/ImportRequest;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    .line 238
    :try_start_5
    iget-object v7, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v7, v4, v10, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v0, v9}, Lcom/android/contacts/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 291
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 294
    :try_start_6
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v3, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0

    .line 245
    :cond_1
    :try_start_7
    iget-object v8, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    array-length v11, v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v12, v11, :cond_4

    aget-object v14, v8, v12

    .line 246
    iget-boolean v15, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v15, :cond_2

    .line 247
    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 251
    :cond_2
    iget-object v15, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceDisplayNames:[Ljava/lang/String;

    add-int/lit8 v16, v13, 0x1

    aget-object v13, v15, v13
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 255
    :try_start_8
    invoke-direct {v1, v6, v14, v13}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/vcard/ImportRequest;

    move-result-object v13
    :try_end_8
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 267
    :try_start_9
    iget-boolean v14, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v14, :cond_3

    .line 268
    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 291
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 294
    :try_start_a
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v3, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 271
    :cond_3
    :try_start_b
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v16

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v7, v0

    .line 262
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v0, v4, v10, v7}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v0, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 291
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 294
    :try_start_c
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v3, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v0

    goto/16 :goto_0

    :catch_6
    move-exception v0

    move-object v7, v0

    .line 257
    :try_start_d
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v0, v4, v10, v7}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v0, v9}, Lcom/android/contacts/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 291
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 294
    :try_start_e
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v3, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v0

    goto/16 :goto_0

    .line 274
    :cond_4
    :goto_3
    :try_start_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 275
    iget-object v7, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->sendImportRequest(Ljava/util/List;)V

    goto :goto_4

    :cond_5
    const-string v0, "Empty import requests. Ignore it."

    .line 277
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 291
    :goto_4
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 294
    :try_start_10
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v3, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v5, v0

    goto/16 :goto_8

    :catch_9
    move-exception v0

    .line 286
    :try_start_11
    iget-object v7, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const-string v8, "IOException during caching vCard"

    invoke-static {v7, v4, v8, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v7, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v8, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v9, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    .line 289
    invoke-virtual {v9, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 291
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 294
    :try_start_12
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v3, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_6

    :catch_a
    move-exception v0

    .line 296
    :goto_5
    iget-object v3, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3, v4, v2, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    :goto_6
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 300
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v0, v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 301
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_7

    :catch_b
    move-exception v0

    .line 280
    :try_start_13
    iget-object v5, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const-string v7, "OutOfMemoryError occured during caching vCard"

    invoke-static {v5, v4, v7, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 283
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v5, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v7, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v8, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v9, 0x7f10012f

    .line 284
    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 291
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 294
    :try_start_14
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v3, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_c

    goto :goto_6

    :catch_c
    move-exception v0

    goto :goto_5

    :goto_7
    return-void

    .line 291
    :goto_8
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 294
    :try_start_15
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v3, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_d

    goto :goto_9

    :catch_d
    move-exception v0

    .line 296
    iget-object v3, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3, v4, v2, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    :goto_9
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 300
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v0, v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 301
    iget-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 302
    throw v5

    .line 212
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "vCard cache thread must be launched after a service connection is established"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
