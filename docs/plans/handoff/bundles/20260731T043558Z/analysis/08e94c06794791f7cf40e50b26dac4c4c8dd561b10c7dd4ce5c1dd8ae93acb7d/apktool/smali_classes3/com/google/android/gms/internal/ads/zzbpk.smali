.class final Lcom/google/android/gms/internal/ads/zzbpk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcce;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbqa;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzflc;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbqb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbqb;Lcom/google/android/gms/internal/ads/zzbqa;Lcom/google/android/gms/internal/ads/zzflc;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpk;->zza:Lcom/google/android/gms/internal/ads/zzbqa;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbpk;->zzb:Lcom/google/android/gms/internal/ads/zzflc;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpk;->zzc:Lcom/google/android/gms/internal/ads/zzbqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbow;

    const-string p1, "loadNewJavascriptEngine (success): Trying to acquire lock"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpk;->zzc:Lcom/google/android/gms/internal/ads/zzbqb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqb;->zzf()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "loadNewJavascriptEngine (success): Lock acquired"

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbqb;->zzk(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqb;->zzh()Lcom/google/android/gms/internal/ads/zzbqa;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpk;->zza:Lcom/google/android/gms/internal/ads/zzbqa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqb;->zzh()Lcom/google/android/gms/internal/ads/zzbqa;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const-string v1, "New JS engine is loaded, marking previous one as destroyable."

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqb;->zzh()Lcom/google/android/gms/internal/ads/zzbqa;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbqa;->zzc()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpk;->zza:Lcom/google/android/gms/internal/ads/zzbqa;

    .line 7
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbqb;->zzi(Lcom/google/android/gms/internal/ads/zzbqa;)V

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgn;->zzd:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqb;->zzg()Lcom/google/android/gms/internal/ads/zzflp;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqb;->zzg()Lcom/google/android/gms/internal/ads/zzflp;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpk;->zzb:Lcom/google/android/gms/internal/ads/zzflc;

    const/4 v2, 0x1

    .line 9
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzflc;->zzd(Z)Lcom/google/android/gms/internal/ads/zzflc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzflc;->zzm()Lcom/google/android/gms/internal/ads/zzflf;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzflp;->zzb(Lcom/google/android/gms/internal/ads/zzflf;)V

    .line 10
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "loadNewJavascriptEngine (success): Lock released"

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
