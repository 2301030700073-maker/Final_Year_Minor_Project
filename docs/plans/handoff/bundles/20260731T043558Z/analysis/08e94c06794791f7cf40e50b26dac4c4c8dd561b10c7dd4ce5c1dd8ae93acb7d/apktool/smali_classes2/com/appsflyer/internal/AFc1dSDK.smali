.class public final Lcom/appsflyer/internal/AFc1dSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFc1bSDK;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFc1dSDK$AFa1ySDK;
    }
.end annotation


# static fields
.field private static final getCurrencyIso4217Code:I


# instance fields
.field private AFAdRevenueData:Ljava/util/concurrent/ScheduledExecutorService;

.field private AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1uSDK;

.field private AFInAppEventType:Lcom/appsflyer/internal/AFj1rSDK;

.field private AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1cSDK;

.field private AFLogger:Lcom/appsflyer/internal/AFe1ySDK;

.field private AFPurchaseDetails:Lcom/appsflyer/internal/AFh1qSDK;

.field private afDebugLog:Lcom/appsflyer/internal/AFa1rSDK;

.field private afErrorLog:Lcom/appsflyer/internal/AFg1vSDK;

.field private afErrorLogForExcManagerOnly:Ljava/lang/String;

.field private afInfoLog:Lcom/appsflyer/internal/AFi1kSDK;

.field private afLogForce:Lcom/appsflyer/internal/AFf1gSDK;

.field private afRDLog:Lcom/appsflyer/internal/AFi1jSDK;

.field private afVerboseLog:Lcom/appsflyer/internal/AFg1aSDK;

.field private afWarnLog:Lcom/appsflyer/internal/AFe1qSDK;

.field private areAllFieldsValid:Lcom/appsflyer/PurchaseHandler;

.field private component1:Lcom/appsflyer/internal/AFc1qSDK;

.field private component2:Lcom/appsflyer/internal/AFc1pSDK;

.field private component3:Lcom/appsflyer/internal/AFf1lSDK;

.field private component4:Lcom/appsflyer/internal/AFd1kSDK;

.field private copy:Lcom/appsflyer/internal/AFj1pSDK;

.field private copydefault:Lcom/appsflyer/internal/AFg1rSDK;

.field private d:Lcom/appsflyer/internal/AFi1sSDK;

.field private e:Lcom/appsflyer/internal/AFj1eSDK;

.field private equals:Lcom/appsflyer/internal/AFd1mSDK;

.field private force:Lcom/appsflyer/internal/AFa1hSDK;

.field private getLevel:Lcom/appsflyer/internal/AFc1eSDK;

.field private getMediationNetwork:Ljava/util/concurrent/ExecutorService;

.field public final getMonetizationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

.field private getRevenue:Ljava/util/concurrent/ExecutorService;

.field private hashCode:Lcom/appsflyer/internal/AFe1nSDK;

.field private i:Lcom/appsflyer/internal/AFg1sSDK;

.field private registerClient:Lcom/appsflyer/internal/AFd1ySDK;

.field private toString:Lcom/appsflyer/internal/AFh1tSDK;

.field private unregisterClient:Lcom/appsflyer/internal/AFi1lSDK;

.field private v:Lcom/appsflyer/internal/AFa1bSDK;

.field private values:Lcom/appsflyer/internal/AFg1xSDK;

.field private w:Lcom/appsflyer/internal/AFb1aSDK;


# direct methods
.method public static synthetic $r8$lambda$O-n4FWBjQV0SbwEz5abY8pCeuOU(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/appsflyer/internal/AFc1dSDK;->getCurrencyIso4217Code(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xVFcKPq-dCOp_T5y7I-QPekogKs(Lcom/appsflyer/internal/AFc1dSDK;)Landroid/content/SharedPreferences;
    .locals 0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1dSDK;->o_()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 92
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/appsflyer/internal/AFc1dSDK;->getCurrencyIso4217Code:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afErrorLogForExcManagerOnly:Ljava/lang/String;

    .line 134
    new-instance v0, Lcom/appsflyer/internal/AFc1gSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFc1gSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    return-void
.end method

.method private AFLoggerLogLevel()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afErrorLogForExcManagerOnly:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/appsflyer/internal/AFa1ySDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFa1ySDK;-><init>()V

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFa1ySDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afErrorLogForExcManagerOnly:Ljava/lang/String;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afErrorLogForExcManagerOnly:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized AFPurchaseDetails()Lcom/appsflyer/internal/AFg1xSDK;
    .locals 3

    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->values:Lcom/appsflyer/internal/AFg1xSDK;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/appsflyer/internal/AFg1xSDK;

    .line 306
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v1

    .line 307
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFg1xSDK;-><init>(Lcom/appsflyer/internal/AFc1gSDK;Lcom/appsflyer/internal/AFc1pSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->values:Lcom/appsflyer/internal/AFg1xSDK;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->values:Lcom/appsflyer/internal/AFg1xSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized AFPurchaseType()Lcom/appsflyer/internal/AFj1eSDK;
    .locals 2

    monitor-enter p0

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->e:Lcom/appsflyer/internal/AFj1eSDK;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Lcom/appsflyer/internal/AFj1eSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFj1eSDK;-><init>(Lcom/appsflyer/internal/AFc1pSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->e:Lcom/appsflyer/internal/AFj1eSDK;

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->e:Lcom/appsflyer/internal/AFj1eSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized afVerboseLog()Lcom/appsflyer/internal/AFd1kSDK;
    .locals 3

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->component4:Lcom/appsflyer/internal/AFd1kSDK;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/appsflyer/internal/AFd1kSDK;

    .line 1203
    new-instance v1, Lcom/appsflyer/internal/AFd1fSDK;

    sget v2, Lcom/appsflyer/internal/AFc1dSDK;->getCurrencyIso4217Code:I

    invoke-direct {v1, v2}, Lcom/appsflyer/internal/AFd1fSDK;-><init>(I)V

    .line 184
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->getMediationNetwork()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFd1kSDK;-><init>(Lcom/appsflyer/internal/AFd1fSDK;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->component4:Lcom/appsflyer/internal/AFd1kSDK;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->component4:Lcom/appsflyer/internal/AFd1kSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static synthetic getCurrencyIso4217Code(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 647
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 649
    const-string p1, "could not create executor for queue"

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 650
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method private declared-synchronized getLevel()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFAdRevenueData:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Lcom/appsflyer/internal/AFc1jSDK;->getMediationNetwork()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFAdRevenueData:Ljava/util/concurrent/ScheduledExecutorService;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFAdRevenueData:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private synthetic o_()Landroid/content/SharedPreferences;
    .locals 2

    .line 26275
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 27025
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 255
    invoke-static {v0}, Lcom/appsflyer/internal/AFa1uSDK;->d_(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 26277
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context must be set via setContext method before calling this dependency."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized valueOf()Ljava/util/concurrent/ExecutorService;
    .locals 1

    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->getMediationNetwork:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 219
    invoke-static {}, Lcom/appsflyer/internal/AFc1jSDK;->getCurrencyIso4217Code()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->getMediationNetwork:Ljava/util/concurrent/ExecutorService;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->getMediationNetwork:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized values()Lcom/appsflyer/internal/AFd1ySDK;
    .locals 1

    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->registerClient:Lcom/appsflyer/internal/AFd1ySDK;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lcom/appsflyer/internal/AFd1ySDK;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFd1ySDK;-><init>(Lcom/appsflyer/internal/AFc1bSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->registerClient:Lcom/appsflyer/internal/AFd1ySDK;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->registerClient:Lcom/appsflyer/internal/AFd1ySDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final AFAdRevenueData()Lcom/appsflyer/internal/AFe1qSDK;
    .locals 9

    .line 154
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afWarnLog:Lcom/appsflyer/internal/AFe1qSDK;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/appsflyer/internal/AFe1qSDK;

    .line 156
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v2

    .line 157
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v3

    .line 158
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v4

    .line 159
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->getMediationNetwork()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 160
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->component4()Lcom/appsflyer/internal/AFg1rSDK;

    move-result-object v6

    .line 161
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v7

    .line 162
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/appsflyer/internal/AFe1qSDK;-><init>(Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/internal/AFc1gSDK;Lcom/appsflyer/internal/AFc1pSDK;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFg1rSDK;Lcom/appsflyer/internal/AFf1cSDK;Lcom/appsflyer/internal/AFe1nSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afWarnLog:Lcom/appsflyer/internal/AFe1qSDK;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afWarnLog:Lcom/appsflyer/internal/AFe1qSDK;

    return-object v0
.end method

.method public final declared-synchronized AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1ySDK;
    .locals 3

    monitor-enter p0

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFLogger:Lcom/appsflyer/internal/AFe1ySDK;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Lcom/appsflyer/internal/AFe1ySDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFe1ySDK;-><init>(Lcom/appsflyer/internal/AFc1pSDK;Lcom/appsflyer/internal/AFc1oSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFLogger:Lcom/appsflyer/internal/AFe1ySDK;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFLogger:Lcom/appsflyer/internal/AFe1ySDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized AFInAppEventType()Lcom/appsflyer/internal/AFc1uSDK;
    .locals 3

    monitor-enter p0

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1uSDK;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Lcom/appsflyer/internal/AFc1rSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFc1rSDK;-><init>(Lcom/appsflyer/internal/AFc1gSDK;Lcom/appsflyer/internal/AFc1oSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1uSDK;

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1uSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;
    .locals 3

    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1cSDK;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Lcom/appsflyer/internal/AFf1cSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFf1eSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFf1eSDK;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFf1cSDK;-><init>(Lcom/appsflyer/internal/AFc1gSDK;Lcom/appsflyer/internal/AFf1eSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1cSDK;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1cSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized AFLogger()Lcom/appsflyer/internal/AFj1rSDK;
    .locals 1

    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFj1rSDK;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Lcom/appsflyer/internal/AFj1rSDK;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFj1rSDK;-><init>(Lcom/appsflyer/internal/AFc1bSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFj1rSDK;

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFj1rSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final afDebugLog()Lcom/appsflyer/internal/AFb1aSDK;
    .locals 4

    .line 508
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->w:Lcom/appsflyer/internal/AFb1aSDK;

    if-nez v0, :cond_1

    .line 509
    new-instance v0, Lcom/appsflyer/internal/AFb1cSDK;

    .line 510
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1dSDK;->getLevel()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 511
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object v2

    .line 21490
    iget-object v3, p0, Lcom/appsflyer/internal/AFc1dSDK;->afInfoLog:Lcom/appsflyer/internal/AFi1kSDK;

    if-nez v3, :cond_0

    .line 21491
    new-instance v3, Lcom/appsflyer/internal/AFi1nSDK;

    invoke-direct {v3}, Lcom/appsflyer/internal/AFi1nSDK;-><init>()V

    iput-object v3, p0, Lcom/appsflyer/internal/AFc1dSDK;->afInfoLog:Lcom/appsflyer/internal/AFi1kSDK;

    .line 21493
    :cond_0
    iget-object v3, p0, Lcom/appsflyer/internal/AFc1dSDK;->afInfoLog:Lcom/appsflyer/internal/AFi1kSDK;

    .line 512
    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/internal/AFb1cSDK;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/appsflyer/internal/AFa1rSDK;Lcom/appsflyer/internal/AFi1kSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->w:Lcom/appsflyer/internal/AFb1aSDK;

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->w:Lcom/appsflyer/internal/AFb1aSDK;

    return-object v0
.end method

.method public final afErrorLog()Lcom/appsflyer/internal/AFg1aSDK;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afVerboseLog:Lcom/appsflyer/internal/AFg1aSDK;

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Lcom/appsflyer/internal/AFh1vSDK;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFh1vSDK;-><init>(Lcom/appsflyer/internal/AFc1bSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afVerboseLog:Lcom/appsflyer/internal/AFg1aSDK;

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afVerboseLog:Lcom/appsflyer/internal/AFg1aSDK;

    return-object v0
.end method

.method public final afErrorLogForExcManagerOnly()Lcom/appsflyer/internal/AFa1hSDK;
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->force:Lcom/appsflyer/internal/AFa1hSDK;

    if-nez v0, :cond_0

    .line 570
    new-instance v0, Lcom/appsflyer/internal/AFa1lSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFa1lSDK;-><init>(Lcom/appsflyer/internal/AFc1oSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->force:Lcom/appsflyer/internal/AFa1hSDK;

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->force:Lcom/appsflyer/internal/AFa1hSDK;

    return-object v0
.end method

.method public final afInfoLog()Lcom/appsflyer/internal/AFc1eSDK;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->getLevel:Lcom/appsflyer/internal/AFc1eSDK;

    if-nez v0, :cond_0

    .line 500
    new-instance v0, Lcom/appsflyer/internal/AFc1eSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFc1eSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->getLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->getLevel:Lcom/appsflyer/internal/AFc1eSDK;

    return-object v0
.end method

.method public final afLogForce()Lcom/appsflyer/internal/AFh1qSDK;
    .locals 3

    .line 599
    invoke-static {}, Lcom/appsflyer/internal/AFh1sSDK;->getMonetizationNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFPurchaseDetails:Lcom/appsflyer/internal/AFh1qSDK;

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Lcom/appsflyer/internal/AFh1oSDK;

    .line 602
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v1

    .line 603
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->AFLogger()Lcom/appsflyer/internal/AFj1rSDK;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFh1oSDK;-><init>(Lcom/appsflyer/internal/AFc1pSDK;Lcom/appsflyer/internal/AFj1rSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFPurchaseDetails:Lcom/appsflyer/internal/AFh1qSDK;

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFPurchaseDetails:Lcom/appsflyer/internal/AFh1qSDK;

    return-object v0
.end method

.method public final afRDLog()Lcom/appsflyer/internal/AFb1bSDK;
    .locals 4

    .line 589
    new-instance v0, Lcom/appsflyer/internal/AFb1hSDK;

    .line 25499
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1dSDK;->getLevel:Lcom/appsflyer/internal/AFc1eSDK;

    if-nez v1, :cond_0

    .line 25500
    new-instance v1, Lcom/appsflyer/internal/AFc1eSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFc1eSDK;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/AFc1dSDK;->getLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 25502
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1dSDK;->getLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 591
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v2

    .line 592
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/internal/AFb1hSDK;-><init>(Lcom/appsflyer/internal/AFc1eSDK;Lcom/appsflyer/internal/AFc1gSDK;Lcom/appsflyer/internal/AFf1cSDK;)V

    return-object v0
.end method

.method public final synthetic afWarnLog()Lcom/appsflyer/internal/AFd1xSDK;
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1dSDK;->values()Lcom/appsflyer/internal/AFd1ySDK;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized areAllFieldsValid()Lcom/appsflyer/PurchaseHandler;
    .locals 1

    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->areAllFieldsValid:Lcom/appsflyer/PurchaseHandler;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/appsflyer/PurchaseHandler;

    invoke-direct {v0, p0}, Lcom/appsflyer/PurchaseHandler;-><init>(Lcom/appsflyer/internal/AFc1bSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->areAllFieldsValid:Lcom/appsflyer/PurchaseHandler;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->areAllFieldsValid:Lcom/appsflyer/PurchaseHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized component1()Lcom/appsflyer/internal/AFf1lSDK;
    .locals 14

    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->component3:Lcom/appsflyer/internal/AFf1lSDK;

    if-nez v0, :cond_0

    .line 286
    new-instance v5, Lcom/appsflyer/internal/AFf1iSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/appsflyer/internal/AFf1iSDK;-><init>(Lcom/appsflyer/internal/AFc1oSDK;)V

    .line 287
    new-instance v7, Lcom/appsflyer/internal/AFf1hSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v0

    invoke-direct {v7, v0, v5}, Lcom/appsflyer/internal/AFf1hSDK;-><init>(Lcom/appsflyer/internal/AFc1pSDK;Lcom/appsflyer/internal/AFf1iSDK;)V

    .line 288
    new-instance v0, Lcom/appsflyer/internal/AFf1lSDK;

    new-instance v2, Lcom/appsflyer/internal/AFf1qSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFf1qSDK;-><init>()V

    .line 290
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v3

    .line 291
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v4

    .line 3171
    new-instance v6, Lcom/appsflyer/internal/AFd1lSDK;

    .line 3172
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1dSDK;->afVerboseLog()Lcom/appsflyer/internal/AFd1kSDK;

    move-result-object v9

    .line 3173
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v10

    .line 3174
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v11

    .line 3175
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1ySDK;

    move-result-object v12

    .line 3176
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1dSDK;->AFPurchaseType()Lcom/appsflyer/internal/AFj1eSDK;

    move-result-object v13

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Lcom/appsflyer/internal/AFd1lSDK;-><init>(Lcom/appsflyer/internal/AFd1kSDK;Lcom/appsflyer/internal/AFc1pSDK;Lcom/appsflyer/AppsFlyerProperties;Lcom/appsflyer/internal/AFe1ySDK;Lcom/appsflyer/internal/AFj1eSDK;)V

    .line 295
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/appsflyer/internal/AFf1lSDK;-><init>(Lcom/appsflyer/internal/AFf1qSDK;Lcom/appsflyer/internal/AFc1pSDK;Lcom/appsflyer/internal/AFf1cSDK;Lcom/appsflyer/internal/AFf1iSDK;Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFf1hSDK;Lcom/appsflyer/internal/AFe1nSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->component3:Lcom/appsflyer/internal/AFf1lSDK;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->component3:Lcom/appsflyer/internal/AFf1lSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final component2()Lcom/appsflyer/internal/AFc1oSDK;
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->component1:Lcom/appsflyer/internal/AFc1qSDK;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/appsflyer/internal/AFc1hSDK;

    new-instance v1, Lcom/appsflyer/internal/AFc1dSDK$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/AFc1dSDK$$ExternalSyntheticLambda1;-><init>(Lcom/appsflyer/internal/AFc1dSDK;)V

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFc1hSDK;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 256
    new-instance v1, Lcom/appsflyer/internal/AFc1qSDK;

    invoke-direct {v1, v0}, Lcom/appsflyer/internal/AFc1qSDK;-><init>(Lcom/appsflyer/internal/AFc1hSDK;)V

    iput-object v1, p0, Lcom/appsflyer/internal/AFc1dSDK;->component1:Lcom/appsflyer/internal/AFc1qSDK;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->component1:Lcom/appsflyer/internal/AFc1qSDK;

    return-object v0
.end method

.method public final declared-synchronized component3()Lcom/appsflyer/internal/AFh1tSDK;
    .locals 3

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->toString:Lcom/appsflyer/internal/AFh1tSDK;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/appsflyer/internal/AFh1tSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFh1tSDK;-><init>(Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/internal/AFc1pSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->toString:Lcom/appsflyer/internal/AFh1tSDK;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->toString:Lcom/appsflyer/internal/AFh1tSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final component4()Lcom/appsflyer/internal/AFg1rSDK;
    .locals 17

    move-object/from16 v0, p0

    .line 324
    iget-object v1, v0, Lcom/appsflyer/internal/AFc1dSDK;->copydefault:Lcom/appsflyer/internal/AFg1rSDK;

    if-nez v1, :cond_9

    .line 325
    new-instance v1, Lcom/appsflyer/internal/AFg1qSDK;

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/appsflyer/internal/AFc1dSDK;->AFLoggerLogLevel()Ljava/lang/String;

    move-result-object v3

    .line 4275
    iget-object v2, v0, Lcom/appsflyer/internal/AFc1dSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 5025
    iget-object v4, v2, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 4276
    const-string v2, "Context must be set via setContext method before calling this dependency."

    if-eqz v4, :cond_8

    .line 6436
    iget-object v5, v0, Lcom/appsflyer/internal/AFc1dSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1lSDK;

    if-nez v5, :cond_0

    .line 6437
    new-instance v5, Lcom/appsflyer/internal/AFi1gSDK;

    invoke-direct {v5}, Lcom/appsflyer/internal/AFi1gSDK;-><init>()V

    iput-object v5, v0, Lcom/appsflyer/internal/AFc1dSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1lSDK;

    .line 6439
    :cond_0
    iget-object v5, v0, Lcom/appsflyer/internal/AFc1dSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1lSDK;

    .line 7463
    iget-object v6, v0, Lcom/appsflyer/internal/AFc1dSDK;->i:Lcom/appsflyer/internal/AFg1sSDK;

    if-nez v6, :cond_1

    .line 7464
    new-instance v6, Lcom/appsflyer/internal/AFg1wSDK;

    invoke-direct {v6}, Lcom/appsflyer/internal/AFg1wSDK;-><init>()V

    iput-object v6, v0, Lcom/appsflyer/internal/AFc1dSDK;->i:Lcom/appsflyer/internal/AFg1sSDK;

    .line 7466
    :cond_1
    iget-object v6, v0, Lcom/appsflyer/internal/AFc1dSDK;->i:Lcom/appsflyer/internal/AFg1sSDK;

    .line 8348
    iget-object v7, v0, Lcom/appsflyer/internal/AFc1dSDK;->copy:Lcom/appsflyer/internal/AFj1pSDK;

    if-nez v7, :cond_3

    .line 8349
    new-instance v7, Lcom/appsflyer/internal/AFj1oSDK;

    .line 9275
    iget-object v8, v0, Lcom/appsflyer/internal/AFc1dSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 10025
    iget-object v8, v8, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    if-eqz v8, :cond_2

    .line 8349
    invoke-direct/range {p0 .. p0}, Lcom/appsflyer/internal/AFc1dSDK;->valueOf()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/appsflyer/internal/AFj1oSDK;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    iput-object v7, v0, Lcom/appsflyer/internal/AFc1dSDK;->copy:Lcom/appsflyer/internal/AFj1pSDK;

    goto :goto_0

    .line 9277
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8351
    :cond_3
    :goto_0
    iget-object v7, v0, Lcom/appsflyer/internal/AFc1dSDK;->copy:Lcom/appsflyer/internal/AFj1pSDK;

    .line 11481
    iget-object v8, v0, Lcom/appsflyer/internal/AFc1dSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1vSDK;

    if-nez v8, :cond_4

    .line 11482
    new-instance v8, Lcom/appsflyer/internal/AFg1oSDK;

    invoke-direct {v8}, Lcom/appsflyer/internal/AFg1oSDK;-><init>()V

    iput-object v8, v0, Lcom/appsflyer/internal/AFc1dSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1vSDK;

    .line 11484
    :cond_4
    iget-object v8, v0, Lcom/appsflyer/internal/AFc1dSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1vSDK;

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFc1dSDK;->component3()Lcom/appsflyer/internal/AFh1tSDK;

    move-result-object v9

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFc1dSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v10

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFc1dSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v11

    .line 12472
    iget-object v12, v0, Lcom/appsflyer/internal/AFc1dSDK;->d:Lcom/appsflyer/internal/AFi1sSDK;

    if-nez v12, :cond_6

    .line 12473
    new-instance v12, Lcom/appsflyer/internal/AFi1sSDK;

    .line 13275
    iget-object v13, v0, Lcom/appsflyer/internal/AFc1dSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 14025
    iget-object v13, v13, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    if-eqz v13, :cond_5

    .line 12473
    invoke-direct {v12, v13}, Lcom/appsflyer/internal/AFi1sSDK;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/appsflyer/internal/AFc1dSDK;->d:Lcom/appsflyer/internal/AFi1sSDK;

    goto :goto_1

    .line 13277
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12475
    :cond_6
    :goto_1
    iget-object v12, v0, Lcom/appsflyer/internal/AFc1dSDK;->d:Lcom/appsflyer/internal/AFi1sSDK;

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFc1dSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v13

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFc1dSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v14

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/appsflyer/internal/AFc1dSDK;->AFPurchaseDetails()Lcom/appsflyer/internal/AFg1xSDK;

    move-result-object v15

    .line 15499
    iget-object v2, v0, Lcom/appsflyer/internal/AFc1dSDK;->getLevel:Lcom/appsflyer/internal/AFc1eSDK;

    if-nez v2, :cond_7

    .line 15500
    new-instance v2, Lcom/appsflyer/internal/AFc1eSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFc1eSDK;-><init>()V

    iput-object v2, v0, Lcom/appsflyer/internal/AFc1dSDK;->getLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 15502
    :cond_7
    iget-object v2, v0, Lcom/appsflyer/internal/AFc1dSDK;->getLevel:Lcom/appsflyer/internal/AFc1eSDK;

    move-object/from16 v16, v2

    move-object v2, v1

    .line 339
    invoke-direct/range {v2 .. v16}, Lcom/appsflyer/internal/AFg1qSDK;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/appsflyer/internal/AFi1lSDK;Lcom/appsflyer/internal/AFg1sSDK;Lcom/appsflyer/internal/AFj1pSDK;Lcom/appsflyer/internal/AFg1vSDK;Lcom/appsflyer/internal/AFh1tSDK;Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/internal/AFc1pSDK;Lcom/appsflyer/internal/AFi1sSDK;Lcom/appsflyer/internal/AFf1cSDK;Lcom/appsflyer/internal/AFc1gSDK;Lcom/appsflyer/internal/AFg1xSDK;Lcom/appsflyer/internal/AFc1eSDK;)V

    iput-object v1, v0, Lcom/appsflyer/internal/AFc1dSDK;->copydefault:Lcom/appsflyer/internal/AFg1rSDK;

    goto :goto_2

    .line 4277
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/appsflyer/internal/AFc1dSDK;->copydefault:Lcom/appsflyer/internal/AFg1rSDK;

    return-object v1
.end method

.method public final copy()Lcom/appsflyer/internal/AFj1pSDK;
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->copy:Lcom/appsflyer/internal/AFj1pSDK;

    if-nez v0, :cond_1

    .line 349
    new-instance v0, Lcom/appsflyer/internal/AFj1oSDK;

    .line 16275
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1dSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 17025
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1dSDK;->valueOf()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFj1oSDK;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->copy:Lcom/appsflyer/internal/AFj1pSDK;

    goto :goto_0

    .line 16277
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context must be set via setContext method before calling this dependency."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->copy:Lcom/appsflyer/internal/AFj1pSDK;

    return-object v0
.end method

.method public final declared-synchronized copydefault()Lcom/appsflyer/internal/AFe1nSDK;
    .locals 9

    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->hashCode:Lcom/appsflyer/internal/AFe1nSDK;

    if-nez v0, :cond_0

    .line 18627
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/appsflyer/internal/AFc1dSDK$1;

    invoke-direct {v7}, Lcom/appsflyer/internal/AFc1dSDK$1;-><init>()V

    new-instance v8, Lcom/appsflyer/internal/AFc1dSDK$AFa1ySDK;

    invoke-direct {v8}, Lcom/appsflyer/internal/AFc1dSDK$AFa1ySDK;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x6

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 18645
    new-instance v1, Lcom/appsflyer/internal/AFc1dSDK$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFc1dSDK$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 359
    new-instance v1, Lcom/appsflyer/internal/AFe1nSDK;

    invoke-direct {v1, v0}, Lcom/appsflyer/internal/AFe1nSDK;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, p0, Lcom/appsflyer/internal/AFc1dSDK;->hashCode:Lcom/appsflyer/internal/AFe1nSDK;

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->hashCode:Lcom/appsflyer/internal/AFe1nSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d()Lcom/appsflyer/internal/AFi1kSDK;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afInfoLog:Lcom/appsflyer/internal/AFi1kSDK;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Lcom/appsflyer/internal/AFi1nSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFi1nSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afInfoLog:Lcom/appsflyer/internal/AFi1kSDK;

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afInfoLog:Lcom/appsflyer/internal/AFi1kSDK;

    return-object v0
.end method

.method public final e()Lcom/appsflyer/internal/AFi1lSDK;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1lSDK;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Lcom/appsflyer/internal/AFi1gSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFi1gSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1lSDK;

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1lSDK;

    return-object v0
.end method

.method public final declared-synchronized equals()Lcom/appsflyer/internal/AFd1mSDK;
    .locals 1

    monitor-enter p0

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->equals:Lcom/appsflyer/internal/AFd1mSDK;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Lcom/appsflyer/internal/AFd1nSDK;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFd1nSDK;-><init>(Lcom/appsflyer/internal/AFc1bSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->equals:Lcom/appsflyer/internal/AFd1mSDK;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->equals:Lcom/appsflyer/internal/AFd1mSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final force()Lcom/appsflyer/internal/AFf1gSDK;
    .locals 4

    .line 528
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afLogForce:Lcom/appsflyer/internal/AFf1gSDK;

    if-nez v0, :cond_2

    .line 529
    new-instance v0, Lcom/appsflyer/internal/AFf1fSDK;

    new-instance v1, Lcom/appsflyer/internal/AFg1zSDK;

    .line 22275
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1dSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 23025
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 532
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/appsflyer/internal/AFg1zSDK;-><init>(Landroid/content/Context;Lcom/appsflyer/AppsFlyerProperties;)V

    .line 24499
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1dSDK;->getLevel:Lcom/appsflyer/internal/AFc1eSDK;

    if-nez v2, :cond_0

    .line 24500
    new-instance v2, Lcom/appsflyer/internal/AFc1eSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFc1eSDK;-><init>()V

    iput-object v2, p0, Lcom/appsflyer/internal/AFc1dSDK;->getLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 24502
    :cond_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1dSDK;->getLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 535
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/internal/AFf1fSDK;-><init>(Lcom/appsflyer/internal/AFf1bSDK;Lcom/appsflyer/internal/AFc1eSDK;Lcom/appsflyer/AppsFlyerProperties;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afLogForce:Lcom/appsflyer/internal/AFf1gSDK;

    goto :goto_0

    .line 22277
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context must be set via setContext method before calling this dependency."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afLogForce:Lcom/appsflyer/internal/AFf1gSDK;

    return-object v0
.end method

.method public final declared-synchronized getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;
    .locals 5

    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->component2:Lcom/appsflyer/internal/AFc1pSDK;

    if-nez v0, :cond_1

    .line 246
    new-instance v0, Lcom/appsflyer/internal/AFc1pSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v2

    .line 2499
    iget-object v3, p0, Lcom/appsflyer/internal/AFc1dSDK;->getLevel:Lcom/appsflyer/internal/AFc1eSDK;

    if-nez v3, :cond_0

    .line 2500
    new-instance v3, Lcom/appsflyer/internal/AFc1eSDK;

    invoke-direct {v3}, Lcom/appsflyer/internal/AFc1eSDK;-><init>()V

    iput-object v3, p0, Lcom/appsflyer/internal/AFc1dSDK;->getLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 2502
    :cond_0
    iget-object v3, p0, Lcom/appsflyer/internal/AFc1dSDK;->getLevel:Lcom/appsflyer/internal/AFc1eSDK;

    .line 246
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->getMediationNetwork()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/internal/AFc1pSDK;-><init>(Lcom/appsflyer/internal/AFc1gSDK;Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/internal/AFc1eSDK;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->component2:Lcom/appsflyer/internal/AFc1pSDK;

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->component2:Lcom/appsflyer/internal/AFc1pSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getMediationNetwork()Ljava/util/concurrent/ExecutorService;
    .locals 1

    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->getRevenue:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Lcom/appsflyer/internal/AFc1jSDK;->AFAdRevenueData()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->getRevenue:Ljava/util/concurrent/ExecutorService;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->getRevenue:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getMonetizationNetwork()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFAdRevenueData:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Lcom/appsflyer/internal/AFc1jSDK;->getMonetizationNetwork()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFAdRevenueData:Ljava/util/concurrent/ScheduledExecutorService;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->AFAdRevenueData:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getRevenue()Lcom/appsflyer/internal/AFd1lSDK;
    .locals 7

    .line 171
    new-instance v6, Lcom/appsflyer/internal/AFd1lSDK;

    .line 172
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1dSDK;->afVerboseLog()Lcom/appsflyer/internal/AFd1kSDK;

    move-result-object v1

    .line 173
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v2

    .line 174
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    .line 175
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1ySDK;

    move-result-object v4

    .line 176
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1dSDK;->AFPurchaseType()Lcom/appsflyer/internal/AFj1eSDK;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFd1lSDK;-><init>(Lcom/appsflyer/internal/AFd1kSDK;Lcom/appsflyer/internal/AFc1pSDK;Lcom/appsflyer/AppsFlyerProperties;Lcom/appsflyer/internal/AFe1ySDK;Lcom/appsflyer/internal/AFj1eSDK;)V

    return-object v6
.end method

.method public final declared-synchronized i()Lcom/appsflyer/internal/AFa1rSDK;
    .locals 1

    monitor-enter p0

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afDebugLog:Lcom/appsflyer/internal/AFa1rSDK;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Lcom/appsflyer/internal/AFa1rSDK;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFa1rSDK;-><init>(Lcom/appsflyer/internal/AFc1bSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afDebugLog:Lcom/appsflyer/internal/AFa1rSDK;

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afDebugLog:Lcom/appsflyer/internal/AFa1rSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized registerClient()Lcom/appsflyer/internal/AFc1gSDK;
    .locals 1

    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1gSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized unregisterClient()Lcom/appsflyer/internal/AFa1bSDK;
    .locals 2

    monitor-enter p0

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->v:Lcom/appsflyer/internal/AFa1bSDK;

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Lcom/appsflyer/internal/AFa1aSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFa1aSDK;-><init>(Lcom/appsflyer/internal/AFc1gSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->v:Lcom/appsflyer/internal/AFa1bSDK;

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->v:Lcom/appsflyer/internal/AFa1bSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final v()Lcom/appsflyer/internal/AFi1jSDK;
    .locals 12

    .line 547
    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1dSDK;->afRDLog:Lcom/appsflyer/internal/AFi1jSDK;

    if-nez v1, :cond_3

    .line 549
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v1

    .line 550
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v2

    .line 551
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1dSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x3

    :try_start_1
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/4 v2, 0x0

    aput-object v1, v5, v2

    sget-object v1, Lcom/appsflyer/internal/AFi1hSDK;->d:Ljava/util/Map;

    const v7, -0x2bf5a423

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    invoke-static {v2}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    rsub-int/lit8 v8, v8, 0x24

    invoke-static {v0, v2, v2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v9

    invoke-static {v1, v8, v9}, Lcom/appsflyer/internal/AFi1hSDK;->getCurrencyIso4217Code(CII)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Class;

    const-class v8, Lcom/appsflyer/internal/AFc1pSDK;

    aput-object v8, v4, v2

    const-class v2, Lcom/appsflyer/internal/AFc1gSDK;

    aput-object v2, v4, v3

    const-class v2, Lcom/appsflyer/internal/AFf1cSDK;

    aput-object v2, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sget-object v2, Lcom/appsflyer/internal/AFi1hSDK;->d:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFi1jSDK;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v1, p0, Lcom/appsflyer/internal/AFc1dSDK;->afRDLog:Lcom/appsflyer/internal/AFi1jSDK;

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    throw v2

    :cond_1
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    move-object v5, v1

    .line 555
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFg1cSDK;

    .line 557
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 555
    invoke-virtual/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 563
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->afRDLog:Lcom/appsflyer/internal/AFi1jSDK;

    return-object v0
.end method

.method public final w()Lcom/appsflyer/internal/AFi1sSDK;
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->d:Lcom/appsflyer/internal/AFi1sSDK;

    if-nez v0, :cond_1

    .line 473
    new-instance v0, Lcom/appsflyer/internal/AFi1sSDK;

    .line 19275
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1dSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 20025
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 473
    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFi1sSDK;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->d:Lcom/appsflyer/internal/AFi1sSDK;

    goto :goto_0

    .line 19277
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context must be set via setContext method before calling this dependency."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1dSDK;->d:Lcom/appsflyer/internal/AFi1sSDK;

    return-object v0
.end method
