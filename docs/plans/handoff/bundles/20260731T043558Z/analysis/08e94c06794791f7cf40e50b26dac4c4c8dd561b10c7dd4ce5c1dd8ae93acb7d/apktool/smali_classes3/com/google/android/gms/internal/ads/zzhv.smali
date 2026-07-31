.class final Lcom/google/android/gms/internal/ads/zzhv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyv;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzhx;

.field private final zzb:Ljava/util/HashMap;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzpc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhx;Lcom/google/android/gms/internal/ads/zzpc;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhv;->zzb:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhv;->zzc:Lcom/google/android/gms/internal/ads/zzpc;

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzyt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhv;->zzb:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzpc;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzl()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzpc;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhw;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhw;->zzb()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized zza()Lcom/google/android/gms/internal/ads/zzyt;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzk()Lcom/google/android/gms/internal/ads/zzzb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhv;->zzb:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzb;->zza()Lcom/google/android/gms/internal/ads/zzyt;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhv;->zzc:Lcom/google/android/gms/internal/ads/zzpc;

    .line 2
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzl()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhw;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhw;->zza()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzyt;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzk()Lcom/google/android/gms/internal/ads/zzzb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzb;->zzb(Lcom/google/android/gms/internal/ads/zzyt;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhv;->zze(Lcom/google/android/gms/internal/ads/zzyt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzyu;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzk()Lcom/google/android/gms/internal/ads/zzzb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzb;->zzc(Lcom/google/android/gms/internal/ads/zzyu;)V

    :goto_0
    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyu;->zzd()Lcom/google/android/gms/internal/ads/zzyt;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhv;->zze(Lcom/google/android/gms/internal/ads/zzyt;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyu;->zze()Lcom/google/android/gms/internal/ads/zzyu;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzd()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzk()Lcom/google/android/gms/internal/ads/zzzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzb;->zzd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
