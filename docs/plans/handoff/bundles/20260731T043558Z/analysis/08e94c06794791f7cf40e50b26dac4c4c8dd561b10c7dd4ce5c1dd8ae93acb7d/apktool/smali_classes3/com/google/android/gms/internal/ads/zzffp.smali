.class final Lcom/google/android/gms/internal/ads/zzffp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepi;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzffr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzffr;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffp;->zza:Lcom/google/android/gms/internal/ads/zzffr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffp;->zza:Lcom/google/android/gms/internal/ads/zzffr;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzffr;->zzx(Lcom/google/android/gms/internal/ads/zzdri;)V

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffp;->zza:Lcom/google/android/gms/internal/ads/zzffr;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdri;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzffr;->zzx(Lcom/google/android/gms/internal/ads/zzdri;)V

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeu;->zzec:Lcom/google/android/gms/internal/ads/zzbel;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdri;->zzh()Lcom/google/android/gms/internal/ads/zzfgh;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffr;->zzv()Lcom/google/android/gms/internal/ads/zzfgg;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzfgh;->zza:Lcom/google/android/gms/internal/ads/zzfgg;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffr;->zzw()Lcom/google/android/gms/internal/ads/zzdri;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcto;->zzj()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
