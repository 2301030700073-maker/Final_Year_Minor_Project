.class final Lcom/google/android/gms/internal/ads/zzeke;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzguf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzffu;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzekf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzekf;Lcom/google/android/gms/internal/ads/zzffu;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeke;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeke;->zzb:Lcom/google/android/gms/internal/ads/zzekf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeke;->zzb:Lcom/google/android/gms/internal/ads/zzekf;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekf;->zzc()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeke;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzekg;->zzc(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzffu;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekf;->zzc()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzekg;->zza()Lcom/google/android/gms/internal/ads/zzffu;

    move-result-object p1

    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/zzffu;->zzav:Z

    if-eqz v1, :cond_0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzekf;->zzb(Lcom/google/android/gms/internal/ads/zzffu;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekf;->zzc()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzekg;->zza()Lcom/google/android/gms/internal/ads/zzffu;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzekf;->zzb(Lcom/google/android/gms/internal/ads/zzffu;)V

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeke;->zzb:Lcom/google/android/gms/internal/ads/zzekf;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzekw;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekf;->zzc()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeke;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    .line 2
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzekg;->zzb(Lcom/google/android/gms/internal/ads/zzekw;Lcom/google/android/gms/internal/ads/zzffu;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekf;->zzc()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzekg;->zza()Lcom/google/android/gms/internal/ads/zzffu;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzekf;->zzb(Lcom/google/android/gms/internal/ads/zzffu;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
