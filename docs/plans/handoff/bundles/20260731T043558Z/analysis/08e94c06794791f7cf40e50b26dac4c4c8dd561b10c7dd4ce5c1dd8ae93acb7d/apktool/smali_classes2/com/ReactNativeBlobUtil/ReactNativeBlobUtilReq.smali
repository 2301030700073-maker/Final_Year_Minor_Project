.class public Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;
.super Landroid/content/BroadcastReceiver;
.source "ReactNativeBlobUtilReq.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;,
        Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;,
        Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;
    }
.end annotation


# static fields
.field public static androidDownloadManagerTaskTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static pool:Lokhttp3/ConnectionPool;

.field static progressReport:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static taskTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field

.field static uploadProgressReport:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final QUERY:I

.field callback:Lcom/facebook/react/bridge/Callback;

.field callbackfired:Z

.field client:Lokhttp3/OkHttpClient;

.field contentLength:J

.field customPath:Ljava/lang/String;

.field destPath:Ljava/lang/String;

.field downloadManagerId:J

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field headers:Lcom/facebook/react/bridge/ReadableMap;

.field private mHandler:Landroid/os/Handler;

.field method:Ljava/lang/String;

.field options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

.field rawRequestBody:Ljava/lang/String;

.field rawRequestBodyArray:Lcom/facebook/react/bridge/ReadableArray;

.field redirects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requestBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

.field requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

.field respInfo:Lcom/facebook/react/bridge/WritableMap;

.field responseFormat:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

.field responseType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field taskId:Ljava/lang/String;

.field timeout:Z

.field url:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetfuture(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)Ljava/util/concurrent/Future;
    .locals 0

    iget-object p0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->future:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdone(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;Lokhttp3/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->done(Lokhttp3/Response;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minvoke_callback(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseTaskResource(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)V
    .locals 0

    invoke-direct {p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->releaseTaskResource()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskTable:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->androidDownloadManagerTaskTable:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->progressReport:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->uploadProgressReport:Ljava/util/HashMap;

    .line 111
    new-instance v0, Lokhttp3/ConnectionPool;

    invoke-direct {v0}, Lokhttp3/ConnectionPool;-><init>()V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->pool:Lokhttp3/ConnectionPool;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lokhttp3/OkHttpClient;Lcom/facebook/react/bridge/Callback;)V
    .locals 3

    .line 135
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 128
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->Auto:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->responseFormat:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->timeout:Z

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->redirects:Ljava/util/ArrayList;

    const/16 v1, 0x522

    .line 184
    iput v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->QUERY:I

    const/4 v1, 0x1

    .line 185
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 187
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$1;

    invoke-direct {v2, p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$1;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->mHandler:Landroid/os/Handler;

    .line 136
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    .line 137
    new-instance p3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    invoke-direct {p3, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    iput-object p3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    .line 138
    iput-object p2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    .line 139
    iput-object p4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->url:Ljava/lang/String;

    .line 140
    iput-object p5, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->headers:Lcom/facebook/react/bridge/ReadableMap;

    .line 141
    iput-object p9, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->callback:Lcom/facebook/react/bridge/Callback;

    .line 142
    iput-object p6, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->rawRequestBody:Ljava/lang/String;

    .line 143
    iput-object p7, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->rawRequestBodyArray:Lcom/facebook/react/bridge/ReadableArray;

    .line 144
    iput-object p8, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->client:Lokhttp3/OkHttpClient;

    .line 145
    iput-boolean v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->callbackfired:Z

    .line 149
    iget-object p1, p3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->fileCache:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->path:Ljava/lang/String;

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->shouldTransformFile()Z

    move-result p1

    if-nez p1, :cond_1

    .line 150
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;->FileStorage:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;

    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->responseType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;

    goto :goto_0

    .line 152
    :cond_1
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;->KeepInMemory:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;

    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->responseType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;

    :goto_0
    if-eqz p6, :cond_2

    .line 156
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->SingleFile:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    goto :goto_1

    :cond_2
    if-eqz p7, :cond_3

    .line 158
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->Form:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    goto :goto_1

    .line 160
    :cond_3
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->WithoutBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    :goto_1
    return-void
.end method

.method public static cancelTask(Ljava/lang/String;)V
    .locals 4

    .line 164
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 167
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->androidDownloadManagerTaskTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->androidDownloadManagerTaskTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 172
    sget-object p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 173
    const-string v2, "download"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/DownloadManager;

    const/4 v2, 0x1

    .line 174
    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager;->remove([J)I

    :cond_1
    return-void
.end method

.method private done(Lokhttp3/Response;)V
    .locals 13

    const-string v0, "Error from file transformer:"

    .line 679
    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->isBlobResponse(Lokhttp3/Response;)Z

    move-result v1

    .line 680
    invoke-direct {p0, p1, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getResponseInfo(Lokhttp3/Response;Z)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 681
    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->emitStateEvent(Lcom/facebook/react/bridge/WritableMap;)V

    .line 683
    invoke-direct {p0, p1, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getResponseInfo(Lokhttp3/Response;Z)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->emitStateEvent(Lcom/facebook/react/bridge/WritableMap;)V

    .line 684
    sget-object v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$6;->$SwitchMap$com$ReactNativeBlobUtil$ReactNativeBlobUtilReq$ResponseType:[I

    iget-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->responseType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;

    invoke-virtual {v4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "UTF-8"

    const-string v5, ""

    const-string v6, "?append=true"

    const/4 v7, 0x0

    const-string/jumbo v8, "path"

    const-string/jumbo v9, "utf8"

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v3, v11, :cond_6

    if-eq v3, v10, :cond_0

    .line 800
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    filled-new-array {v12, v9, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 802
    :catch_0
    const-string v0, "ReactNativeBlobUtil failed to encode response data to UTF8 string."

    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 755
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 761
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 769
    :catch_1
    :try_start_2
    check-cast v0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_1

    .line 790
    invoke-virtual {v0}, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->isDownloadComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 791
    const-string v0, "Download interrupted."

    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    .line 794
    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    filled-new-array {v12, v8, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto/16 :goto_5

    :catch_2
    if-eqz v0, :cond_5

    .line 775
    :try_start_3
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p1

    invoke-interface {p1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    move p1, v11

    goto :goto_0

    :cond_2
    move p1, v7

    .line 776
    :goto_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    move v7, v11

    :cond_3
    if-eqz p1, :cond_4

    if-eqz v7, :cond_4

    .line 778
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v12, p1

    goto :goto_1

    :catch_3
    move-exception p1

    .line 781
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 783
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected FileStorage response file: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto :goto_2

    .line 785
    :cond_5
    const-string p1, "Unexpected FileStorage response with no file."

    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_6
    if-eqz v1, :cond_8

    .line 689
    :try_start_4
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v1, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->auto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 690
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->getTmpPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 692
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, v4}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->create(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v3

    const/16 v4, 0x2800

    .line 694
    new-array v4, v4, [B

    .line 695
    :goto_3
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    .line 696
    invoke-virtual {v3, v4, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 698
    :cond_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 699
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 700
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 701
    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    filled-new-array {v12, v8, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 705
    :cond_8
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    .line 708
    invoke-direct {p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->shouldTransformFile()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 709
    sget-object v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFileTransformer;->sharedFileTransformer:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFileTransformer$FileTransformer;

    if-eqz v3, :cond_a

    .line 712
    iget-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    .line 713
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9

    .line 715
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 717
    :cond_9
    :try_start_5
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4, v3}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->create(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 718
    :try_start_6
    sget-object v4, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFileTransformer;->sharedFileTransformer:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFileTransformer$FileTransformer;

    invoke-interface {v4, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFileTransformer$FileTransformer;->onWriteFile([B)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 719
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 723
    :try_start_8
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    filled-new-array {v12, v8, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    return-void

    :catchall_0
    move-exception v1

    .line 717
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v3

    :try_start_a
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :catch_4
    move-exception v1

    .line 720
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    return-void

    .line 710
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Write file with transform was specified but the shared file transformer is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_b
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->responseFormat:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    sget-object v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->BASE64:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    const-string v5, "base64"

    if-ne v0, v3, :cond_c

    .line 727
    :try_start_c
    invoke-static {v1, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    filled-new-array {v12, v5, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    return-void

    .line 732
    :cond_c
    :try_start_d
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 733
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    .line 734
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 736
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 737
    filled-new-array {v12, v9, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_5

    .line 742
    :catch_5
    :try_start_e
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->responseFormat:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    sget-object v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->UTF8:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    if-ne v0, v3, :cond_d

    .line 743
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 744
    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    filled-new-array {v12, v9, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto :goto_5

    .line 746
    :cond_d
    invoke-static {v1, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    filled-new-array {v12, v5, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_5

    .line 751
    :catch_6
    const-string v0, "ReactNativeBlobUtil failed to encode response data to BASE64 string."

    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    .line 807
    :goto_5
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    .line 808
    invoke-direct {p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->releaseTaskResource()V

    return-void
.end method

.method private emitStateEvent(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 906
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "ReactNativeBlobUtilState"

    .line 907
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static enableTls12OnPreLollipop(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    return-object p0
.end method

.method private getHeaderIgnoreCases(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 899
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 901
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    .line 902
    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method private getHeaderIgnoreCases(Lokhttp3/Headers;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 893
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 895
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static getReportProgress(Ljava/lang/String;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;
    .locals 1

    .line 818
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->progressReport:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 819
    :cond_0
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->progressReport:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;

    return-object p0
.end method

.method public static getReportUploadProgress(Ljava/lang/String;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;
    .locals 1

    .line 829
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->uploadProgressReport:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 830
    :cond_0
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->uploadProgressReport:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;

    return-object p0
.end method

.method private getResponseInfo(Lokhttp3/Response;Z)Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    .line 841
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 842
    const-string/jumbo v1, "status"

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 843
    const-string/jumbo v1, "state"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string/jumbo v1, "taskId"

    iget-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string/jumbo v1, "timeout"

    iget-boolean v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->timeout:Z

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 846
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const/4 v2, 0x0

    .line 847
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 848
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {v4, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 850
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    .line 851
    iget-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->redirects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 852
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 854
    :cond_1
    const-string/jumbo v3, "redirects"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 855
    const-string v2, "headers"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 856
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    .line 857
    const-string/jumbo v1, "respType"

    if-eqz p2, :cond_2

    .line 858
    const-string p1, "blob"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 859
    :cond_2
    const-string p2, "content-type"

    invoke-direct {p0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getHeaderIgnoreCases(Lokhttp3/Headers;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 860
    const-string/jumbo p1, "text"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 861
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getHeaderIgnoreCases(Lokhttp3/Headers;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/json"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 862
    const-string p1, "json"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 864
    :cond_4
    const-string p1, ""

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method private varargs invoke_callback([Ljava/lang/Object;)V
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->callbackfired:Z

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->callback:Lcom/facebook/react/bridge/Callback;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->callbackfired:Z

    return-void
.end method

.method private isBlobResponse(Lokhttp3/Response;)Z
    .locals 8

    .line 876
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    .line 877
    const-string v0, "Content-Type"

    invoke-direct {p0, p1, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getHeaderIgnoreCases(Lokhttp3/Headers;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 878
    const-string/jumbo v0, "text/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 879
    const-string v1, "application/json"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 881
    iget-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v2, v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->binaryContentTypes:Lcom/facebook/react/bridge/ReadableArray;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v4

    .line 882
    :goto_0
    iget-object v5, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v5, v5, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->binaryContentTypes:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v5}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 883
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v6, v6, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->binaryContentTypes:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v6, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move p1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :cond_4
    :goto_2
    return v3
.end method

.method private releaseTaskResource()V
    .locals 2

    .line 661
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskTable:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskTable:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_0
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->androidDownloadManagerTaskTable:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->androidDownloadManagerTaskTable:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    :cond_1
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->uploadProgressReport:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 666
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->uploadProgressReport:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    :cond_2
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->progressReport:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 668
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->progressReport:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    :cond_3
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    if-eqz v0, :cond_4

    .line 670
    invoke-virtual {v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->clearRequestBody()Z

    :cond_4
    return-void
.end method

.method private shouldTransformFile()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->transformFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->fileCache:Ljava/lang/Boolean;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->path:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 912
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 913
    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 914
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 915
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "extra_download_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 916
    iget-wide v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->downloadManagerId:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_c

    .line 917
    invoke-direct {p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->releaseTaskResource()V

    .line 919
    new-instance p2, Landroid/app/DownloadManager$Query;

    invoke-direct {p2}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 920
    iget-wide v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->downloadManagerId:J

    const/4 v2, 0x1

    new-array v3, v2, [J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    invoke-virtual {p2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 921
    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 922
    invoke-virtual {v0, p2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    .line 923
    invoke-virtual {v0, p2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p2

    const/4 v1, 0x0

    .line 924
    const-string v3, "Download manager failed to download from  "

    if-nez p2, :cond_0

    .line 925
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". Query was unsuccessful "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    return-void

    .line 932
    :cond_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 933
    const-string/jumbo v5, "status"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_2

    .line 935
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". Status Code = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 952
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    .line 938
    :cond_2
    :try_start_1
    const-string v3, "local_uri"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 940
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 941
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-array v7, v2, [Ljava/lang/String;

    const-string p1, "_data"

    aput-object p1, v7, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 944
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 945
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 946
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_4

    .line 952
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 957
    :cond_4
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo p2, "path"

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo v3, "storeLocal"

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 971
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt p1, v3, :cond_7

    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo v3, "storeInDownloads"

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 972
    iget-wide v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->downloadManagerId:J

    invoke-virtual {v0, v2, v3}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_6

    .line 974
    const-string p1, "Download manager could not resolve downloaded file uri."

    filled-new-array {p1, p2, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto :goto_2

    .line 976
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    if-nez v2, :cond_8

    .line 980
    const-string p1, "Download manager could not resolve downloaded file path."

    filled-new-array {p1, p2, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto :goto_2

    .line 982
    :cond_8
    filled-new-array {v1, p2, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto :goto_2

    .line 959
    :cond_9
    :goto_1
    :try_start_2
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->customPath:Ljava/lang/String;

    .line 960
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 964
    filled-new-array {v1, p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto :goto_2

    .line 962
    :cond_a
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Download manager download failed, the file does not downloaded to destination."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 967
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 968
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_b

    .line 952
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 954
    :cond_b
    throw p1

    :cond_c
    :goto_2
    return-void
.end method

.method public run()V
    .locals 15

    .line 240
    const-string/jumbo v0, "post"

    const-string v1, "Content-Type"

    sget-object v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 242
    iget-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v3, v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "."

    const-string/jumbo v5, "path"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v3, v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo v9, "useDownloadManager"

    invoke-interface {v3, v9}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 244
    iget-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v3, v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v3, v9}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 245
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 246
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 247
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo v3, "notification"

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v1, v7}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {v1, v6}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo v3, "title"

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string v7, "description"

    invoke-interface {v0, v7}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "\'"

    const-string v9, "Failed to create parent directory of \'"

    const-string v10, "file://"

    if-eqz v0, :cond_4

    .line 259
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 263
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v11, :cond_3

    .line 264
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 265
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v8, v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    return-void

    .line 271
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 273
    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->customPath:Ljava/lang/String;

    .line 277
    :cond_4
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo v5, "storeLocal"

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 278
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->getSystemfolders(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Map;

    move-result-object v0

    const-string v5, "DownloadDir"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 283
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v11, :cond_5

    .line 284
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 285
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v8, v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    return-void

    .line 291
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 292
    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->customPath:Ljava/lang/String;

    .line 295
    :cond_6
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo v5, "mime"

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 296
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 299
    :cond_7
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo v5, "mediaScannable"

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 300
    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 303
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v0, v5, :cond_c

    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo v5, "storeInDownloads"

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 304
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 305
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 306
    :cond_9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_a
    iget-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v3, v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->appendExt:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v3, v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->appendExt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v3, v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->appendExt:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_b
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 314
    :cond_c
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->headers:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v0

    .line 315
    :goto_1
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 316
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v3

    .line 317
    iget-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->headers:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v4, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    goto :goto_1

    .line 323
    :cond_d
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->url:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    const-string v3, "Cookie"

    invoke-virtual {v1, v3, v0}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 331
    :goto_2
    const-string v0, "download"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 332
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->downloadManagerId:J

    .line 333
    sget-object v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->androidDownloadManagerTaskTable:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    if-lt v0, v1, :cond_e

    .line 335
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_3

    .line 337
    :cond_e
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 339
    :goto_3
    iget-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$2;

    invoke-direct {v5, p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$2;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)V

    const-wide/16 v8, 0x64

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x0

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->future:Ljava/util/concurrent/Future;

    return-void

    .line 356
    :cond_f
    iget-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    .line 357
    iget-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v3, v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->appendExt:Ljava/lang/String;

    const-string v9, ""

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v3, v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->appendExt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_4

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v4, v4, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->appendExt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_11
    :goto_4
    move-object v3, v9

    .line 359
    :goto_5
    iget-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v4, v4, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->key:Ljava/lang/String;

    if-eqz v4, :cond_13

    .line 360
    iget-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v2, v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->key:Ljava/lang/String;

    invoke-static {v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    .line 362
    iget-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    .line 365
    :cond_12
    new-instance v4, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->getTmpPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 368
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v8, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    return-void

    .line 373
    :cond_13
    iget-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v4, v4, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->path:Ljava/lang/String;

    if-eqz v4, :cond_14

    .line 374
    iget-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v2, v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->path:Ljava/lang/String;

    iput-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    goto :goto_6

    .line 375
    :cond_14
    iget-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v4, v4, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->fileCache:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 376
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->getTmpPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    .line 383
    :cond_15
    :goto_6
    :try_start_1
    iget-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v2, v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->trusty:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 384
    iget-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->client:Lokhttp3/OkHttpClient;

    invoke-static {v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilUtils;->getUnsafeOkHttpClient(Lokhttp3/OkHttpClient;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    goto :goto_7

    .line 386
    :cond_16
    iget-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 391
    :goto_7
    iget-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v3, v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->wifiOnly:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1b

    .line 396
    sget-object v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    sget-object v5, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v5, "connectivity"

    invoke-virtual {v3, v5}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 397
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v5

    .line 399
    array-length v10, v5

    move v11, v4

    :goto_8
    if-ge v11, v10, :cond_1a

    aget-object v12, v5, v11

    .line 401
    invoke-virtual {v3, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 402
    invoke-virtual {v3, v12}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v14

    if-eqz v14, :cond_19

    if-nez v13, :cond_17

    goto :goto_9

    .line 408
    :cond_17
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-nez v13, :cond_18

    goto :goto_9

    .line 412
    :cond_18
    invoke-virtual {v14, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 413
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 414
    invoke-virtual {v12}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->socketFactory(Ljavax/net/SocketFactory;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_a

    :cond_19
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 422
    :cond_1a
    const-string v0, "No available WiFi connections."

    filled-new-array {v0, v8, v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    .line 423
    invoke-direct {p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->releaseTaskResource()V

    return-void

    .line 431
    :cond_1b
    :goto_a
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 433
    :try_start_2
    new-instance v5, Ljava/net/URL;

    iget-object v10, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->url:Ljava/lang/String;

    invoke-direct {v5, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    :catch_1
    move-exception v5

    .line 435
    :try_start_3
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 438
    :goto_b
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 440
    iget-object v10, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->headers:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v10, :cond_1f

    .line 441
    invoke-interface {v10}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v10

    .line 442
    :cond_1c
    :goto_c
    invoke-interface {v10}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 443
    invoke-interface {v10}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v11

    .line 444
    iget-object v12, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->headers:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v12, v11}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 445
    const-string v13, "RNFB-Response"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 446
    const-string v11, "base64"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 447
    sget-object v11, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->BASE64:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    iput-object v11, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->responseFormat:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    goto :goto_c

    .line 448
    :cond_1d
    const-string/jumbo v11, "utf8"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 449
    sget-object v11, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->UTF8:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    iput-object v11, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->responseFormat:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    goto :goto_c

    .line 451
    :cond_1e
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13, v12}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 452
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 457
    :cond_1f
    iget-object v10, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v11, "content-type"

    if-nez v10, :cond_21

    :try_start_4
    iget-object v10, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    const-string/jumbo v12, "put"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_21

    iget-object v10, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    const-string/jumbo v12, "patch"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    goto :goto_d

    .line 484
    :cond_20
    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->WithoutBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    goto/16 :goto_11

    .line 458
    :cond_21
    :goto_d
    invoke-direct {p0, v5, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getHeaderIgnoreCases(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 460
    iget-object v12, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->rawRequestBodyArray:Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v12, :cond_22

    .line 461
    sget-object v12, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->Form:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object v12, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    goto :goto_e

    :cond_22
    if-eqz v10, :cond_23

    .line 462
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_25

    .line 463
    :cond_23
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_24

    .line 464
    const-string v12, "application/octet-stream"

    invoke-virtual {v3, v1, v12}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 466
    :cond_24
    sget-object v12, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->SingleFile:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object v12, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    .line 468
    :cond_25
    :goto_e
    iget-object v12, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->rawRequestBody:Ljava/lang/String;

    if-eqz v12, :cond_2c

    .line 469
    const-string v13, "ReactNativeBlobUtil-file://"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2b

    iget-object v12, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->rawRequestBody:Ljava/lang/String;

    const-string v13, "ReactNativeBlobUtil-content://"

    .line 470
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_26

    goto :goto_10

    .line 472
    :cond_26
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ";base64"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_28

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "application/octet"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_27

    goto :goto_f

    .line 480
    :cond_27
    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->AsIs:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    goto :goto_11

    .line 473
    :cond_28
    :goto_f
    const-string v12, ";base64"

    invoke-virtual {v10, v12, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v12, ";BASE64"

    invoke-virtual {v10, v12, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 474
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 475
    invoke-virtual {v5, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_29
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 477
    invoke-virtual {v5, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_2a
    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->SingleFile:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    goto :goto_11

    .line 471
    :cond_2b
    :goto_10
    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->SingleFile:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    .line 487
    :cond_2c
    :goto_11
    const-string v1, "Transfer-Encoding"

    invoke-direct {p0, v5, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getHeaderIgnoreCases(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "chunked"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 490
    sget-object v9, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$6;->$SwitchMap$com$ReactNativeBlobUtil$ReactNativeBlobUtilReq$RequestType:[I

    iget-object v10, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    invoke-virtual {v10}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v7, :cond_32

    if-eq v9, v6, :cond_31

    const/4 v5, 0x3

    if-eq v9, v5, :cond_30

    const/4 v1, 0x4

    if-eq v9, v1, :cond_2d

    goto/16 :goto_13

    .line 518
    :cond_2d
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    const-string/jumbo v1, "put"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    const-string/jumbo v1, "patch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_12

    .line 521
    :cond_2e
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    invoke-virtual {v3, v0, v8}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto/16 :goto_13

    .line 519
    :cond_2f
    :goto_12
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    new-array v1, v4, [B

    invoke-static {v8, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto/16 :goto_13

    .line 508
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReactNativeBlobUtil-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    new-instance v5, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    iget-object v6, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;-><init>(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v5, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->chunkedEncoding(Z)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v1

    iget-object v5, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    .line 511
    invoke-virtual {v1, v5}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setRequestType(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v1

    iget-object v5, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->rawRequestBodyArray:Lcom/facebook/react/bridge/ReadableArray;

    .line 512
    invoke-virtual {v1, v5}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setBody(Lcom/facebook/react/bridge/ReadableArray;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "multipart/form-data; boundary="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setMIME(Lokhttp3/MediaType;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v0

    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    .line 514
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_13

    .line 500
    :cond_31
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    iget-object v6, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->chunkedEncoding(Z)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v0

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    .line 502
    invoke-virtual {v0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setRequestType(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v0

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->rawRequestBody:Ljava/lang/String;

    .line 503
    invoke-virtual {v0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setBody(Ljava/lang/String;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v0

    .line 504
    invoke-direct {p0, v5, v11}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getHeaderIgnoreCases(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setMIME(Lokhttp3/MediaType;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v0

    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    .line 505
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_13

    .line 492
    :cond_32
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    iget-object v6, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->chunkedEncoding(Z)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v0

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    .line 494
    invoke-virtual {v0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setRequestType(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v0

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->rawRequestBody:Ljava/lang/String;

    .line 495
    invoke-virtual {v0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setBody(Ljava/lang/String;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v0

    .line 496
    invoke-direct {p0, v5, v11}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getHeaderIgnoreCases(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setMIME(Lokhttp3/MediaType;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v0

    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    .line 497
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 526
    :goto_13
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 527
    new-instance v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$3;

    invoke-direct {v1, p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$3;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)V

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 536
    new-instance v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$4;

    invoke-direct {v1, p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$4;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;Lokhttp3/Request;)V

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 591
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-wide v5, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->timeout:J

    const-wide/16 v8, 0x0

    cmp-long v1, v5, v8

    if-ltz v1, :cond_33

    .line 592
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-wide v5, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->timeout:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 593
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-wide v5, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->timeout:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 596
    :cond_33
    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->pool:Lokhttp3/ConnectionPool;

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    .line 597
    invoke-virtual {v2, v4}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 598
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v1, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->followRedirect:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 599
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v1, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->followRedirect:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 600
    invoke-virtual {v2, v7}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 602
    invoke-static {v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->enableTls12OnPreLollipop(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 604
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 605
    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskTable:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    new-instance v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;

    invoke-direct {v1, p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)V

    invoke-static {v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_14

    :catch_2
    move-exception v0

    .line 651
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 652
    invoke-direct {p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->releaseTaskResource()V

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ReactNativeBlobUtil request error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    :goto_14
    return-void
.end method
