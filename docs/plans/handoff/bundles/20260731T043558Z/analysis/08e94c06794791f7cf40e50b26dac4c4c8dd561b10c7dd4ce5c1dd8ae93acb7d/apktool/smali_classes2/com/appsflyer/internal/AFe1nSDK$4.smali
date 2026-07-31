.class final Lcom/appsflyer/internal/AFe1nSDK$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFe1nSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic getMediationNetwork:Lcom/appsflyer/internal/AFe1nSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFe1nSDK;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1nSDK$4;->getMediationNetwork:Lcom/appsflyer/internal/AFe1nSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 160
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1nSDK$4;->getMediationNetwork:Lcom/appsflyer/internal/AFe1nSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFe1nSDK;->component2:Ljava/util/NavigableSet;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1nSDK$4;->getMediationNetwork:Lcom/appsflyer/internal/AFe1nSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFe1nSDK;->component2:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFe1lSDK;

    if-nez v1, :cond_0

    .line 164
    monitor-exit v0

    return-void

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1nSDK$4;->getMediationNetwork:Lcom/appsflyer/internal/AFe1nSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFe1nSDK;->component3:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFe1lSDK;->getCurrencyIso4217Code()J

    move-result-wide v2

    .line 172
    new-instance v0, Lcom/appsflyer/internal/AFe1oSDK;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/appsflyer/internal/AFe1oSDK;-><init>(Ljava/lang/Thread;)V

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 174
    iget-object v4, p0, Lcom/appsflyer/internal/AFe1nSDK$4;->getMediationNetwork:Lcom/appsflyer/internal/AFe1nSDK;

    iget-object v4, v4, Lcom/appsflyer/internal/AFe1nSDK;->getMediationNetwork:Ljava/util/Timer;

    invoke-virtual {v4, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1nSDK$4;->getMediationNetwork:Lcom/appsflyer/internal/AFe1nSDK;

    .line 1206
    iget-object v3, v2, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/appsflyer/internal/AFe1nSDK$5;

    invoke-direct {v4, v2, v1}, Lcom/appsflyer/internal/AFe1nSDK$5;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 180
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1nSDK$4;->getMediationNetwork:Lcom/appsflyer/internal/AFe1nSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFe1nSDK;->component2:Ljava/util/NavigableSet;

    invoke-interface {v2}, Ljava/util/NavigableSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 181
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1nSDK$4;->getMediationNetwork:Lcom/appsflyer/internal/AFe1nSDK;

    .line 2155
    iget-object v3, v2, Lcom/appsflyer/internal/AFe1nSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/appsflyer/internal/AFe1nSDK$4;

    invoke-direct {v4, v2}, Lcom/appsflyer/internal/AFe1nSDK$4;-><init>(Lcom/appsflyer/internal/AFe1nSDK;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 185
    :cond_2
    :try_start_1
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->component1:Lcom/appsflyer/internal/AFg1cSDK;

    const-string/jumbo v4, "starting task execution: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFe1lSDK;->component3()Lcom/appsflyer/internal/AFe1uSDK;

    move-result-object v2

    .line 188
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 189
    iget-object v3, p0, Lcom/appsflyer/internal/AFe1nSDK$4;->getMediationNetwork:Lcom/appsflyer/internal/AFe1nSDK;

    .line 3217
    iget-object v4, v3, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/appsflyer/internal/AFe1nSDK$1;

    invoke-direct {v5, v3, v1, v2}, Lcom/appsflyer/internal/AFe1nSDK$1;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;Lcom/appsflyer/internal/AFe1uSDK;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 197
    :catchall_0
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 198
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1nSDK$4;->getMediationNetwork:Lcom/appsflyer/internal/AFe1nSDK;

    sget-object v2, Lcom/appsflyer/internal/AFe1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFe1uSDK;

    .line 6217
    iget-object v3, v0, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/appsflyer/internal/AFe1nSDK$1;

    invoke-direct {v4, v0, v1, v2}, Lcom/appsflyer/internal/AFe1nSDK$1;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;Lcom/appsflyer/internal/AFe1uSDK;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 192
    :catch_0
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->component1:Lcom/appsflyer/internal/AFg1cSDK;

    const-string/jumbo v3, "task was interrupted: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 4177
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1uSDK;

    iput-object v0, v1, Lcom/appsflyer/internal/AFe1lSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1uSDK;

    .line 194
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1nSDK$4;->getMediationNetwork:Lcom/appsflyer/internal/AFe1nSDK;

    sget-object v2, Lcom/appsflyer/internal/AFe1uSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1uSDK;

    .line 5217
    iget-object v3, v0, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/appsflyer/internal/AFe1nSDK$1;

    invoke-direct {v4, v0, v1, v2}, Lcom/appsflyer/internal/AFe1nSDK$1;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;Lcom/appsflyer/internal/AFe1uSDK;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v1

    .line 168
    monitor-exit v0

    throw v1
.end method
