.class final Lcom/google/android/gms/internal/ads/zzfbz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepi;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfcc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfcc;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbz;->zza:Lcom/google/android/gms/internal/ads/zzfcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbz;->zza:Lcom/google/android/gms/internal/ads/zzfcc;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfcc;->zza:Lcom/google/android/gms/internal/ads/zzcra;

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
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcra;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbz;->zza:Lcom/google/android/gms/internal/ads/zzfcc;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfcc;->zza:Lcom/google/android/gms/internal/ads/zzcra;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcto;->zzd()V

    :cond_0
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfcc;->zza:Lcom/google/android/gms/internal/ads/zzcra;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcra;->zza(Lcom/google/android/gms/internal/ads/zzbch;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcc;->zzN()Lcom/google/android/gms/internal/ads/zzfbu;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcrb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcc;->zzN()Lcom/google/android/gms/internal/ads/zzfbu;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcc;->zzO()Lcom/google/android/gms/internal/ads/zzdvi;

    move-result-object v4

    .line 4
    invoke-direct {v2, p1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcrb;-><init>(Lcom/google/android/gms/internal/ads/zzcra;Lcom/google/android/gms/ads/internal/client/zzbx;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzdvi;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfbu;->zzs(Lcom/google/android/gms/internal/ads/zzbcn;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcto;->zzj()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
