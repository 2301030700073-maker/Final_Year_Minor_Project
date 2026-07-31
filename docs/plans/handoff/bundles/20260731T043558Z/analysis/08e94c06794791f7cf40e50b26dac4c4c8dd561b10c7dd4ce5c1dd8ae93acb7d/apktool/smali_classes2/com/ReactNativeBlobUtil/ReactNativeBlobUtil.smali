.class public Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;
.super Lcom/facebook/fbreact/specs/NativeBlobUtilsSpec;
.source "ReactNativeBlobUtil.java"


# instance fields
.field private final delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeBlobUtilsSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 27
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-direct {v0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    return-void
.end method


# virtual methods
.method public actionViewIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->actionViewIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public addCompleteDownload(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->addCompleteDownload(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public cancelRequest(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->cancelRequest(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public closeStream(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->closeStream(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public copyToInternal(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->copyToInternal(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public copyToMediaStore(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->copyToMediaStore(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public cp(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->cp(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->createFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public createFileASCII(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->createFileASCII(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public createMediaFile(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->createMediaFile(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public df(Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->df(Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public emitExpiredEvent(Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    return-void
.end method

.method public enableProgressReport(Ljava/lang/String;DD)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    double-to-int p2, p2

    double-to-int p3, p4

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->enableProgressReport(Ljava/lang/String;II)V

    return-void
.end method

.method public enableUploadProgressReport(Ljava/lang/String;DD)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    double-to-int p2, p2

    double-to-int p3, p4

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->enableUploadProgressReport(Ljava/lang/String;II)V

    return-void
.end method

.method public excludeFromBackupKey(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    return-void
.end method

.method public exists(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->exists(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public fetchBlob(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 8

    .line 62
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->fetchBlob(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public fetchBlobForm(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 8

    .line 57
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->fetchBlobForm(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public getBlob(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->getBlob(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getContentIntent(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->getContentIntent(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getEnvironmentDirs(Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "ReactNativeBlobUtil"

    return-object v0
.end method

.method public getSDCardApplicationDir(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->getSDCardApplicationDir(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getSDCardDir(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->getSDCardDir(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method protected getTypedExportedConstants()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-static {v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->getSystemfolders(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 45
    invoke-virtual {p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-static {v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->getLegacySystemfolders(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public hash(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->hash(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public ls(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->ls(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public lstat(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->lstat(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public mkdir(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->mkdir(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public mv(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->mv(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public pathForAppGroup(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    return-void
.end method

.method public presentOpenInMenu(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    return-void
.end method

.method public presentOptionsMenu(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    return-void
.end method

.method public presentPreview(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    return-void
.end method

.method public readFile(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->readFile(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public readStream(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V
    .locals 6

    .line 176
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    double-to-int v3, p3

    double-to-int v4, p5

    move-object v1, p1

    move-object v2, p2

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->readStream(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public removeListeners(D)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public removeSession(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->removeSession(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public scanFile(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->scanFile(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public slice(Ljava/lang/String;Ljava/lang/String;DDLcom/facebook/react/bridge/Promise;)V
    .locals 8

    .line 201
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    double-to-long v3, p3

    double-to-long v5, p5

    move-object v1, p1

    move-object v2, p2

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->slice(Ljava/lang/String;Ljava/lang/String;JJLcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public stat(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->stat(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public syncPathAppGroup(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public unlink(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->unlink(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public writeArrayChunk(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->writeArrayChunk(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public writeChunk(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->writeChunk(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/facebook/react/bridge/Promise;)V
    .locals 7

    .line 96
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public writeFileArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;ZLcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->writeFileArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;ZLcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public writeStream(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->writeStream(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public writeToMediaFile(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->writeToMediaFile(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V

    return-void
.end method
