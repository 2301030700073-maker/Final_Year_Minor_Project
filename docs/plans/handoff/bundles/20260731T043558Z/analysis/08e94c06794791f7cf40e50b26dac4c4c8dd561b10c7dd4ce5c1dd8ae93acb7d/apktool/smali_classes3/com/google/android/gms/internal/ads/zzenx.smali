.class final Lcom/google/android/gms/internal/ads/zzenx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepi;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzeny;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeny;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenx;->zza:Lcom/google/android/gms/internal/ads/zzeny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenx;->zza:Lcom/google/android/gms/internal/ads/zzeny;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeny;->zzN(Lcom/google/android/gms/internal/ads/zzcrg;)V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenx;->zza:Lcom/google/android/gms/internal/ads/zzeny;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcrg;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeny;->zzM()Lcom/google/android/gms/internal/ads/zzcrg;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcto;->zzo()Lcom/google/android/gms/internal/ads/zzcxi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeny;->zzM()Lcom/google/android/gms/internal/ads/zzcrg;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcto;->zzo()Lcom/google/android/gms/internal/ads/zzcxi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcto;->zzo()Lcom/google/android/gms/internal/ads/zzcxi;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeny;->zzM()Lcom/google/android/gms/internal/ads/zzcrg;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcto;->zzo()Lcom/google/android/gms/internal/ads/zzcxi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcxi;->zza()J

    move-result-wide v2

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcxi;->zzb(J)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeny;->zzM()Lcom/google/android/gms/internal/ads/zzcrg;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcto;->zzd()V

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeny;->zzN(Lcom/google/android/gms/internal/ads/zzcrg;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeny;->zzM()Lcom/google/android/gms/internal/ads/zzcrg;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcto;->zzj()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
