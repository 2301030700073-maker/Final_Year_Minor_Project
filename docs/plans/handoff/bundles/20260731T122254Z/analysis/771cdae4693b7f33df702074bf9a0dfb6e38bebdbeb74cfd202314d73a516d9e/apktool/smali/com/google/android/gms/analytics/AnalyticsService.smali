.class public final Lcom/google/android/gms/analytics/AnalyticsService;
.super Landroid/app/Service;


# static fields
.field private static zzIe:Ljava/lang/Boolean;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static zzU(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/AnalyticsService;->zzIe:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/analytics/AnalyticsService;->zzIe:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/google/android/gms/analytics/AnalyticsService;

    invoke-static {p0, v0}, Lcom/google/android/gms/analytics/internal/zzam;->zza(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/AnalyticsService;->zzIe:Ljava/lang/Boolean;

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/AnalyticsService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private zzhd()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzoW:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzIc:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/zzf;->zzV(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzhQ()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zziW()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Device AnalyticsService is starting up"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzaT(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Local AnalyticsService is starting up"

    goto :goto_0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/zzf;->zzV(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzhQ()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zziW()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Device AnalyticsService is shutting down"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzaT(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "Local AnalyticsService is shutting down"

    goto :goto_0

    :goto_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzhd()V

    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/zzf;->zzV(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzhQ()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzr;->zziW()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Device AnalyticsService called. startId, action"

    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string v3, "Local AnalyticsService called. startId, action"

    goto :goto_0

    :goto_1
    const-string v3, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzhl()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/analytics/AnalyticsService$1;

    invoke-direct {v4, p0, p3, v0, v1}, Lcom/google/android/gms/analytics/AnalyticsService$1;-><init>(Lcom/google/android/gms/analytics/AnalyticsService;ILcom/google/android/gms/analytics/internal/zzf;Lcom/google/android/gms/analytics/internal/zzaf;)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/analytics/internal/zzb;->zza(Lcom/google/android/gms/analytics/internal/zzw;)V

    :cond_1
    return v3
.end method
