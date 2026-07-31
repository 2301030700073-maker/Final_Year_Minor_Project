.class public final Lcom/appsflyer/internal/AFj1oSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFj1pSDK;


# static fields
.field private static final component2:Ljava/util/BitSet;


# instance fields
.field final AFAdRevenueData:Ljava/lang/Runnable;

.field private final areAllFieldsValid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/appsflyer/internal/AFj1nSDK;",
            "Lcom/appsflyer/internal/AFj1nSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final component1:Ljava/util/concurrent/ExecutorService;

.field private final component3:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/appsflyer/internal/AFj1nSDK;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final component4:Landroid/hardware/SensorManager;

.field private final equals:Ljava/lang/Runnable;

.field final getCurrencyIso4217Code:Ljava/lang/Runnable;

.field final getMediationNetwork:Ljava/lang/Object;

.field final getMonetizationNetwork:Landroid/os/Handler;

.field getRevenue:Z

.field private toString:Z


# direct methods
.method public static synthetic $r8$lambda$4Q-b2H98dm8NRyuhPxaj3xwC8U4(Lcom/appsflyer/internal/AFj1oSDK;)V
    .locals 0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFj1oSDK;->areAllFieldsValid()V

    return-void
.end method

.method public static synthetic $r8$lambda$528mR3cUn296Uuw1nylheuI1-sk(Lcom/appsflyer/internal/AFj1oSDK;)V
    .locals 0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFj1oSDK;->component1()V

    return-void
.end method

.method public static synthetic $r8$lambda$rFNtHzZC5ctsO6vqEptOutLWU_M(Lcom/appsflyer/internal/AFj1oSDK;)V
    .locals 0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFj1oSDK;->component3()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 36
    sput-object v0, Lcom/appsflyer/internal/AFj1oSDK;->component2:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v1, 0x2

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v1, 0x4

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    .line 2099
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "internal"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2100
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2101
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 87
    invoke-direct {p0, p1, v1, p2}, Lcom/appsflyer/internal/AFj1oSDK;-><init>(Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->getMediationNetwork:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/appsflyer/internal/AFj1oSDK;->component2:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->areAllFieldsValid:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->component3:Ljava/util/Map;

    .line 53
    new-instance v0, Lcom/appsflyer/internal/AFj1oSDK$1;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFj1oSDK$1;-><init>(Lcom/appsflyer/internal/AFj1oSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->AFAdRevenueData:Ljava/lang/Runnable;

    .line 64
    new-instance v0, Lcom/appsflyer/internal/AFj1oSDK$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFj1oSDK$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFj1oSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->getCurrencyIso4217Code:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Lcom/appsflyer/internal/AFj1oSDK$3;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFj1oSDK$3;-><init>(Lcom/appsflyer/internal/AFj1oSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->equals:Ljava/lang/Runnable;

    .line 92
    iput-object p1, p0, Lcom/appsflyer/internal/AFj1oSDK;->component4:Landroid/hardware/SensorManager;

    .line 93
    iput-object p2, p0, Lcom/appsflyer/internal/AFj1oSDK;->getMonetizationNetwork:Landroid/os/Handler;

    .line 94
    iput-object p3, p0, Lcom/appsflyer/internal/AFj1oSDK;->component1:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private synthetic areAllFieldsValid()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->getMediationNetwork:Ljava/lang/Object;

    monitor-enter v0

    .line 6168
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1oSDK;->getMonetizationNetwork:Landroid/os/Handler;

    new-instance v2, Lcom/appsflyer/internal/AFj1oSDK$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/appsflyer/internal/AFj1oSDK$$ExternalSyntheticLambda1;-><init>(Lcom/appsflyer/internal/AFj1oSDK;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private synthetic component1()V
    .locals 4

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->areAllFieldsValid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->areAllFieldsValid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFj1nSDK;

    .line 173
    iget-object v2, p0, Lcom/appsflyer/internal/AFj1oSDK;->component4:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 174
    iget-object v2, p0, Lcom/appsflyer/internal/AFj1oSDK;->component3:Ljava/util/Map;

    const/4 v3, 0x1

    .line 5157
    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/internal/AFj1nSDK;->getCurrencyIso4217Code(Ljava/util/Map;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 178
    const-string v1, "error while unregistering listeners"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->toString:Z

    return-void
.end method

.method private component2()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->getMediationNetwork:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1oSDK;->areAllFieldsValid:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/appsflyer/internal/AFj1oSDK;->toString:Z

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1oSDK;->areAllFieldsValid:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFj1nSDK;

    .line 219
    iget-object v3, p0, Lcom/appsflyer/internal/AFj1oSDK;->component3:Ljava/util/Map;

    const/4 v4, 0x0

    .line 4161
    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFj1nSDK;->getCurrencyIso4217Code(Ljava/util/Map;Z)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1oSDK;->component3:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 225
    :cond_1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/appsflyer/internal/AFj1oSDK;->component3:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 226
    monitor-exit v0

    throw v1
.end method

.method private synthetic component3()V
    .locals 6

    const/4 v0, 0x1

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1oSDK;->component4:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 147
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/appsflyer/internal/AFj1oSDK;->getMonetizationNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    new-instance v3, Lcom/appsflyer/internal/AFj1nSDK;

    iget-object v4, p0, Lcom/appsflyer/internal/AFj1oSDK;->component1:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v2, v4}, Lcom/appsflyer/internal/AFj1nSDK;-><init>(Landroid/hardware/Sensor;Ljava/util/concurrent/ExecutorService;)V

    .line 149
    iget-object v4, p0, Lcom/appsflyer/internal/AFj1oSDK;->areAllFieldsValid:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 150
    iget-object v4, p0, Lcom/appsflyer/internal/AFj1oSDK;->areAllFieldsValid:Ljava/util/Map;

    invoke-interface {v4, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_1
    iget-object v4, p0, Lcom/appsflyer/internal/AFj1oSDK;->areAllFieldsValid:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorEventListener;

    .line 153
    iget-object v4, p0, Lcom/appsflyer/internal/AFj1oSDK;->component4:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/appsflyer/internal/AFj1oSDK;->getMonetizationNetwork:Landroid/os/Handler;

    invoke-virtual {v4, v3, v2, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 157
    const-string/jumbo v2, "registerListeners error"

    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    :cond_2
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->toString:Z

    return-void
.end method

.method private component4()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->getMediationNetwork:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1oSDK;->areAllFieldsValid:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFj1nSDK;

    .line 196
    iget-object v3, p0, Lcom/appsflyer/internal/AFj1oSDK;->component3:Ljava/util/Map;

    const/4 v4, 0x1

    .line 3157
    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFj1nSDK;->getCurrencyIso4217Code(Ljava/util/Map;Z)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1oSDK;->component3:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 203
    :cond_1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/appsflyer/internal/AFj1oSDK;->component3:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 204
    monitor-exit v0

    throw v1
.end method

.method private static getMonetizationNetwork(I)Z
    .locals 1

    if-ltz p0, :cond_0

    .line 115
    sget-object v0, Lcom/appsflyer/internal/AFj1oSDK;->component2:Ljava/util/BitSet;

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final AFAdRevenueData()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 249
    invoke-direct {p0}, Lcom/appsflyer/internal/AFj1oSDK;->component2()Ljava/util/List;

    move-result-object v1

    .line 251
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string/jumbo v3, "sensors"

    if-nez v2, :cond_0

    .line 252
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFj1oSDK;->component4()Ljava/util/List;

    move-result-object v1

    .line 256
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0
.end method

.method final getCurrencyIso4217Code()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->getMonetizationNetwork:Landroid/os/Handler;

    new-instance v1, Lcom/appsflyer/internal/AFj1oSDK$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/AFj1oSDK$$ExternalSyntheticLambda1;-><init>(Lcom/appsflyer/internal/AFj1oSDK;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized getMediationNetwork()V
    .locals 2

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->getMonetizationNetwork:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsflyer/internal/AFj1oSDK;->equals:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getMonetizationNetwork()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->getMonetizationNetwork:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsflyer/internal/AFj1oSDK;->equals:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->getMonetizationNetwork:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsflyer/internal/AFj1oSDK;->AFAdRevenueData:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final getRevenue()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1oSDK;->getMonetizationNetwork:Landroid/os/Handler;

    new-instance v1, Lcom/appsflyer/internal/AFj1oSDK$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/AFj1oSDK$$ExternalSyntheticLambda2;-><init>(Lcom/appsflyer/internal/AFj1oSDK;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
