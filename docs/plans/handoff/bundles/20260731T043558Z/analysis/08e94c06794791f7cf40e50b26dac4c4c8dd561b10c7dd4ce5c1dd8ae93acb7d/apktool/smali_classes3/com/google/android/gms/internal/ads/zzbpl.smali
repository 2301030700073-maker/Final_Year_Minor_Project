.class final Lcom/google/android/gms/internal/ads/zzbpl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzccc;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbqa;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzflc;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbqb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbqb;Lcom/google/android/gms/internal/ads/zzbqa;Lcom/google/android/gms/internal/ads/zzflc;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpl;->zza:Lcom/google/android/gms/internal/ads/zzbqa;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbpl;->zzb:Lcom/google/android/gms/internal/ads/zzflc;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpl;->zzc:Lcom/google/android/gms/internal/ads/zzbqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    const-string v0, "loadNewJavascriptEngine (failure): Trying to acquire lock"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpl;->zzc:Lcom/google/android/gms/internal/ads/zzbqb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqb;->zzf()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v2, "loadNewJavascriptEngine (failure): Lock acquired"

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbqb;->zzk(I)V

    const-string v2, "Failed loading new engine. Marking new engine destroyable."

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbpl;->zza:Lcom/google/android/gms/internal/ads/zzbqa;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbqa;->zzc()V

    .line 6
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgn;->zzd:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqb;->zzg()Lcom/google/android/gms/internal/ads/zzflp;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqb;->zzg()Lcom/google/android/gms/internal/ads/zzflp;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbpl;->zzb:Lcom/google/android/gms/internal/ads/zzflc;

    const-string v3, "Failed loading new engine"

    .line 7
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzflc;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflc;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzflc;->zzd(Z)Lcom/google/android/gms/internal/ads/zzflc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzflc;->zzm()Lcom/google/android/gms/internal/ads/zzflf;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzflp;->zzb(Lcom/google/android/gms/internal/ads/zzflf;)V

    .line 9
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "loadNewJavascriptEngine (failure): Lock released"

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
