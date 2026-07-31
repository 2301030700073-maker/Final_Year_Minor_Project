.class final Lcom/google/android/gms/internal/ads/zzgdc;
.super Lcom/google/android/gms/internal/ads/zzgdh;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzauc;Lcom/google/android/gms/internal/ads/zzgcd;Ljava/util/Map;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgjd;)V
    .locals 7

    const/16 v0, 0x78

    .line 1
    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/ads/zzgjd;->zza(I)Lcom/google/android/gms/internal/ads/zzgjb;

    move-result-object v6

    const-string v2, "yl2V2fIFd/+gtM2i3wtw7rRydnC7INCVtpRFdnYEC9BkEYS1KI4o6evRDqm9gjRN"

    const-string v3, "/ngo8an629JW3IpM1KyGjEthGKpic0JTOThCbrYq6ZE="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgdh;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauc;Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzgjb;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgdc;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgdc;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected final zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzauc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    const-string v1, ""

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdc;->zza:Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 2
    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdc;->zzb:Ljava/util/Map;

    const-string v1, "gs"

    .line 4
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzauz;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzauz;->zze()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_2
    :goto_0
    monitor-enter p2

    .line 9
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzauc;->zzR(J)Lcom/google/android/gms/internal/ads/zzauc;

    .line 10
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
