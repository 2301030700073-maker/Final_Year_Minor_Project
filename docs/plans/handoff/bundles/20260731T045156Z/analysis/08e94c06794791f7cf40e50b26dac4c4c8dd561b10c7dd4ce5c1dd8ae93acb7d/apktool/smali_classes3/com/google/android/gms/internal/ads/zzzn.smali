.class public final Lcom/google/android/gms/internal/ads/zzzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzzh;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzzh;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzzt;

.field private zzd:Lcom/google/android/gms/internal/ads/zzzi;

.field private zze:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzh;

    const/4 v1, 0x2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzzh;-><init>(IJ[B)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzn;->zza:Lcom/google/android/gms/internal/ads/zzzh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzh;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzzh;-><init>(IJ[B)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzn;->zzb:Lcom/google/android/gms/internal/ads/zzzh;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "ExoPlayer:Loader:ProgressiveMediaPeriod"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzep;->zzf(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzzg;->zza:Lcom/google/android/gms/internal/ads/zzzg;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzzt;->zzb(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdg;)Lcom/google/android/gms/internal/ads/zzzt;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzc:Lcom/google/android/gms/internal/ads/zzzt;

    return-void
.end method

.method public static zza(ZJ)Lcom/google/android/gms/internal/ads/zzzh;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzzh;-><init>(IJ[B)V

    return-object v0
.end method


# virtual methods
.method public final zzb()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zze:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zze:Ljava/io/IOException;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzzj;Lcom/google/android/gms/internal/ads/zzzf;I)J
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v0, v2

    check-cast v0, Landroid/os/Looper;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zze:Ljava/io/IOException;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Lcom/google/android/gms/internal/ads/zzzi;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzzi;-><init>(Lcom/google/android/gms/internal/ads/zzzn;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzzj;Lcom/google/android/gms/internal/ads/zzzf;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lcom/google/android/gms/internal/ads/zzzi;->zzb(J)V

    return-wide v8
.end method

.method public final zze()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzd:Lcom/google/android/gms/internal/ads/zzzi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzd:Lcom/google/android/gms/internal/ads/zzzi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzzi;->zzc(Z)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzzk;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzd:Lcom/google/android/gms/internal/ads/zzzi;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzzi;->zzc(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzc:Lcom/google/android/gms/internal/ads/zzzt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzzl;-><init>(Lcom/google/android/gms/internal/ads/zzzk;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzzt;->execute(Ljava/lang/Runnable;)V

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzt;->zza()V

    return-void
.end method

.method public final zzh(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zze:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzd:Lcom/google/android/gms/internal/ads/zzzi;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzi;->zza(I)V

    :cond_0
    return-void

    .line 1
    :cond_1
    throw v0
.end method

.method final synthetic zzi()Lcom/google/android/gms/internal/ads/zzzt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzc:Lcom/google/android/gms/internal/ads/zzzt;

    return-object v0
.end method

.method final synthetic zzj()Lcom/google/android/gms/internal/ads/zzzi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzd:Lcom/google/android/gms/internal/ads/zzzi;

    return-object v0
.end method

.method final synthetic zzk(Lcom/google/android/gms/internal/ads/zzzi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzd:Lcom/google/android/gms/internal/ads/zzzi;

    return-void
.end method

.method final synthetic zzl(Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zze:Ljava/io/IOException;

    return-void
.end method
