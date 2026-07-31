.class public final Lcom/google/android/gms/internal/ads/zzelp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehm;


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdsy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdsy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzelp;->zza:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelp;->zzb:Lcom/google/android/gms/internal/ads/zzdsy;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzehn;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfgu;
        }
    .end annotation

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelp;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzehn;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelp;->zzb:Lcom/google/android/gms/internal/ads/zzdsy;

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfhl;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzehn;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeja;

    .line 3
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzeja;-><init>()V

    invoke-direct {v1, p2, v2, p1}, Lcom/google/android/gms/internal/ads/zzehn;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzczy;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
