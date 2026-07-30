.class public Lcom/android/contacts/vcard/VCardService;
.super Landroid/app/Service;
.source "VCardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/VCardService$MyBinder;,
        Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;
    }
.end annotation


# instance fields
.field private mBinder:Lcom/android/contacts/vcard/VCardService$MyBinder;

.field private mCallingActivity:Ljava/lang/String;

.field private mCurrentJobId:I

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mRemainingScannerConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mReservedDestination:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningJobMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/contacts/vcard/ProcessorBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 91
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    .line 93
    iput v0, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/VCardService;->removeConnectionClient(Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V

    return-void
.end method

.method private declared-synchronized cancelAllRequestsAndShutdown()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 377
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/vcard/ProcessorBase;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/vcard/ProcessorBase;->cancel(Z)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 381
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private clearCache()V
    .locals 6

    .line 388
    invoke-virtual {p0}, Landroid/app/Service;->fileList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "import_tmp_"

    .line 389
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove a temporary file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VCardService"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p0, v3}, Landroid/app/Service;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized removeConnectionClient(Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 1

    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 335
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized stopServiceIfAppropriate()V
    .locals 7

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 280
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 282
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 283
    iget-object v5, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/vcard/ProcessorBase;

    .line 284
    invoke-virtual {v5}, Lcom/android/contacts/vcard/ProcessorBase;->isDone()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v0, "VCardService"

    const-string v5, "Found unfinished job (id: %d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 285
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-ge v2, v3, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    aget v4, v1, v2

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 292
    :cond_0
    monitor-exit p0

    return-void

    .line 296
    :cond_1
    :try_start_1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "VCardService"

    const-string v1, "MediaScanner update is in progress."

    .line 304
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    const-string v0, "VCardService"

    const-string v1, "No unfinished job. Stop this service."

    .line 308
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 310
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z
    .locals 2

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 226
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 227
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "VCardService"

    const-string v1, "Failed to excetute a job."

    .line 229
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 230
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized handleCancelRequest(Lcom/android/contacts/vcard/CancelRequest;Lcom/android/contacts/vcard/VCardImportExportListener;)V
    .locals 4

    monitor-enter p0

    .line 236
    :try_start_0
    iget v0, p1, Lcom/android/contacts/vcard/CancelRequest;->jobId:I

    .line 239
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/vcard/ProcessorBase;

    .line 240
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {v1, v3}, Lcom/android/contacts/vcard/ProcessorBase;->cancel(Z)Z

    .line 244
    invoke-virtual {v1}, Lcom/android/contacts/vcard/ProcessorBase;->getType()I

    move-result v0

    if-eqz p2, :cond_0

    .line 246
    invoke-interface {p2, p1, v0}, Lcom/android/contacts/vcard/VCardImportExportListener;->onCancelRequest(Lcom/android/contacts/vcard/CancelRequest;I)V

    :cond_0
    const/4 p1, 0x2

    if-ne v0, p1, :cond_2

    .line 249
    check-cast v1, Lcom/android/contacts/vcard/ExportProcessor;

    .line 250
    invoke-virtual {v1}, Lcom/android/contacts/vcard/ExportProcessor;->getRequest()Lcom/android/contacts/vcard/ExportRequest;

    move-result-object p1

    iget-object p1, p1, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VCardService"

    const-string v0, "Cancel reservation for the path %s if appropriate"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 252
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object p2, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "VCardService"

    const-string p2, "Not reserved."

    .line 254
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "VCardService"

    const-string p2, "Tried to remove unknown job (id: %d)"

    new-array v1, v3, [Ljava/lang/Object;

    .line 258
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleExportRequest(Lcom/android/contacts/vcard/ExportRequest;Lcom/android/contacts/vcard/VCardImportExportListener;)V
    .locals 5

    monitor-enter p0

    .line 188
    :try_start_0
    new-instance v0, Lcom/android/contacts/vcard/ExportProcessor;

    iget v1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mCallingActivity:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/contacts/vcard/ExportProcessor;-><init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/ExportRequest;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/vcard/VCardService;->tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p1, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "VCardService"

    const-string v3, "The path %s is already reserved. Reject export request"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    .line 193
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 196
    invoke-interface {p2, p1}, Lcom/android/contacts/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/vcard/ExportRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 202
    :try_start_1
    iget v0, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-interface {p2, p1, v0}, Lcom/android/contacts/vcard/VCardImportExportListener;->onExportProcessed(Lcom/android/contacts/vcard/ExportRequest;I)Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 204
    iget p2, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-virtual {p0, p2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 207
    :cond_2
    iget p1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 210
    invoke-interface {p2, p1}, Lcom/android/contacts/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/vcard/ExportRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized handleFinishExportNotification(IZ)V
    .locals 3

    monitor-enter p0

    .line 354
    :try_start_0
    iget-object p2, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/vcard/ProcessorBase;

    .line 355
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const-string p2, "VCardService"

    const-string v2, "Tried to remove unknown job (id: %d)"

    new-array v1, v1, [Ljava/lang/Object;

    .line 357
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    :cond_0
    instance-of v2, p2, Lcom/android/contacts/vcard/ExportProcessor;

    if-nez v2, :cond_1

    const-string p2, "VCardService"

    const-string v2, "Removed job (id: %s) isn\'t ExportProcessor"

    new-array v1, v1, [Ljava/lang/Object;

    .line 360
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    :cond_1
    check-cast p2, Lcom/android/contacts/vcard/ExportProcessor;

    invoke-virtual {p2}, Lcom/android/contacts/vcard/ExportProcessor;->getRequest()Lcom/android/contacts/vcard/ExportRequest;

    move-result-object p1

    iget-object p1, p1, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object p1

    .line 364
    iget-object p2, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 367
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized handleFinishImportNotification(IZ)V
    .locals 0

    monitor-enter p0

    .line 344
    :try_start_0
    iget-object p2, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 345
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleImportRequest(Ljava/util/List;Lcom/android/contacts/vcard/VCardImportExportListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/vcard/ImportRequest;",
            ">;",
            "Lcom/android/contacts/vcard/VCardImportExportListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 163
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 165
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/vcard/ImportRequest;

    .line 167
    new-instance v3, Lcom/android/contacts/vcard/ImportProcessor;

    iget v4, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-direct {v3, p0, p2, v2, v4}, Lcom/android/contacts/vcard/ImportProcessor;-><init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/VCardImportExportListener;Lcom/android/contacts/vcard/ImportRequest;I)V

    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/VCardService;->tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    .line 169
    iget v3, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    .line 170
    invoke-interface {p2, v2, v3, v1}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportProcessed(Lcom/android/contacts/vcard/ImportRequest;II)Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 172
    iget v3, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-virtual {p0, v3, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 175
    :cond_0
    iget v2, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 178
    invoke-interface {p2, v2}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportFailed(Lcom/android/contacts/vcard/ImportRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/android/contacts/vcard/VCardService;->mBinder:Lcom/android/contacts/vcard/VCardService$MyBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 121
    new-instance v0, Lcom/android/contacts/vcard/VCardService$MyBinder;

    invoke-direct {v0, p0}, Lcom/android/contacts/vcard/VCardService$MyBinder;-><init>(Lcom/android/contacts/vcard/VCardService;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mBinder:Lcom/android/contacts/vcard/VCardService$MyBinder;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 144
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->cancelAllRequestsAndShutdown()V

    .line 145
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->clearCache()V

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 147
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "CALLING_ACTIVITY"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/vcard/VCardService;->mCallingActivity:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Lcom/android/contacts/vcard/VCardService;->mCallingActivity:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method declared-synchronized updateMediaScanner(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "VCardService"

    const-string v0, "MediaScanner update is requested after executor\'s being shut down. Ignoring the update request"

    .line 319
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    .line 323
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;-><init>(Lcom/android/contacts/vcard/VCardService;Ljava/lang/String;)V

    .line 325
    iget-object p1, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {v0}, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
