.class public abstract Lcom/google/android/gms/internal/zzfp;
.super Lcom/google/android/gms/internal/zzfs;

# interfaces
.implements Lcom/google/android/gms/internal/zzie$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# instance fields
.field private final zzBd:Lcom/google/android/gms/internal/zzie;

.field protected zzBe:Z

.field private zzxo:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzft$zza;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzfs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzft$zza;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzfp;->zzBe:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzfp;->zzxo:Z

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzid;->zzgF()Lcom/google/android/gms/internal/zzie;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfp;->zzBd:Lcom/google/android/gms/internal/zzie;

    return-void
.end method

.method private zze(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfs$zza;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, p1

    const-wide/32 p1, 0xea60

    sub-long v0, p1, v2

    const-wide/16 p1, 0x1

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzfp;->zzqt:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    new-instance p1, Lcom/google/android/gms/internal/zzfs$zza;

    const-string p2, "Ad request cancelled."

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/zzfs$zza;-><init>(Ljava/lang/String;I)V

    throw p1
.end method


# virtual methods
.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfp;->zzBr:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfp;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzid;->stopLoading()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfp;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzid;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzhm;->zza(Landroid/webkit/WebView;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zza(Lcom/google/android/gms/internal/zzid;Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfp;->zzqt:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string v0, "WebView finished loading."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfp;->zzBe:Z

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzfp;->zzxo:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/zzfp;->zzqt:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method protected zzg(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfs$zza;
        }
    .end annotation

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfp;->zze(J)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/zzfs$zza;

    const-string p2, "Timed out waiting for WebView to finish loading."

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/zzfs$zza;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfp;->zzxo:Z

    if-eqz v0, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/zzfs$zza;

    const-string p2, "Received cancellation request from creative."

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/zzfs$zza;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfp;->zzBe:Z

    if-eqz v0, :cond_0

    return-void
.end method
